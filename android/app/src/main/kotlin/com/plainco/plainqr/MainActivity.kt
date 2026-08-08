package com.plainco.plainqr

import android.content.ComponentName
import android.content.ContentValues
import android.content.Intent
import android.graphics.drawable.Icon
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.CalendarContract
import android.provider.ContactsContract
import android.provider.MediaStore
import android.provider.Settings
import androidx.core.content.FileProvider
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.text.SimpleDateFormat
import java.util.Locale
import java.util.TimeZone

class MainActivity : FlutterActivity() {

    private val CHANNEL = "com.plainco.plainqr/file"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openFile" -> {
                    val path = call.argument<String>("path")
                    val mimeType = call.argument<String>("mimeType")
                    if (path == null || mimeType == null) {
                        result.error("INVALID_ARGS", "path and mimeType are required", null)
                        return@setMethodCallHandler
                    }
                    try {
                        val file = File(path)
                        val uri: Uri = FileProvider.getUriForFile(
                            this,
                            "${packageName}.fileprovider",
                            file
                        )
                        val intent = Intent(Intent.ACTION_VIEW).apply {
                            data = uri
                            type = mimeType
                            flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
                        }
                        if (intent.resolveActivity(packageManager) != null) {
                            startActivity(intent)
                            result.success(true)
                        } else {
                            result.error("NO_HANDLER", "No app found to open this file type", null)
                        }
                    } catch (e: Exception) {
                        result.error("OPEN_FAILED", e.message, null)
                    }
                }
                "addContact" -> {
                    try {
                        val intent = Intent(Intent.ACTION_INSERT).apply {
                            type = ContactsContract.Contacts.CONTENT_TYPE
                        }
                        call.argument<String>("name")?.let { n ->
                            intent.putExtra(ContactsContract.Intents.Insert.NAME, n)
                        }
                        call.argument<String>("phone")?.let { p ->
                            intent.putExtra(ContactsContract.Intents.Insert.PHONE, p)
                        }
                        call.argument<String>("email")?.let { em ->
                            intent.putExtra(ContactsContract.Intents.Insert.EMAIL, em)
                        }
                        call.argument<String>("org")?.let { o ->
                            intent.putExtra(ContactsContract.Intents.Insert.COMPANY, o)
                        }
                        call.argument<String>("title")?.let { t ->
                            intent.putExtra(ContactsContract.Intents.Insert.JOB_TITLE, t)
                        }
                        call.argument<String>("address")?.let { a ->
                            intent.putExtra(ContactsContract.Intents.Insert.POSTAL, a)
                        }
                        call.argument<String>("note")?.let { n ->
                            intent.putExtra(ContactsContract.Intents.Insert.NOTES, n)
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        result.error("ADD_CONTACT_FAILED", e.message, null)
                    }
                }
                "addEvent" -> {
                    try {
                        val intent = Intent(Intent.ACTION_INSERT).apply {
                            data = CalendarContract.Events.CONTENT_URI
                        }
                        call.argument<String>("summary")?.let { s ->
                            intent.putExtra(CalendarContract.Events.TITLE, s)
                        }
                        call.argument<String>("description")?.let { d ->
                            intent.putExtra(CalendarContract.Events.DESCRIPTION, d)
                        }
                        call.argument<String>("location")?.let { l ->
                            intent.putExtra(CalendarContract.Events.EVENT_LOCATION, l)
                        }
                        val dtStart = call.argument<String>("dtstart")
                        if (dtStart != null) {
                            parseIcsTime(dtStart)?.let { millis ->
                                intent.putExtra(CalendarContract.EXTRA_EVENT_BEGIN_TIME, millis)
                            }
                        }
                        val dtEnd = call.argument<String>("dtend")
                        if (dtEnd != null) {
                            parseIcsTime(dtEnd)?.let { millis ->
                                intent.putExtra(CalendarContract.EXTRA_EVENT_END_TIME, millis)
                            }
                        }
                        startActivity(intent)
                        result.success(true)
                    } catch (e: Exception) {
                        result.error("ADD_EVENT_FAILED", e.message, null)
                    }
                }
                "saveToDownloads" -> {
                    val path = call.argument<String>("path")
                    if (path == null) {
                        result.error("INVALID_ARGS", "path is required", null)
                        return@setMethodCallHandler
                    }
                    try {
                        val file = File(path)
                        // Validate path is within allowed directories
                        // Use canonical paths to handle Android's /data/data/ vs /data/user/0/ symlinks
                        val cachePath = cacheDir.canonicalPath
                        val extPath = getExternalFilesDir(null)?.canonicalPath
                        val canonical = file.canonicalPath
                        if (!canonical.startsWith(cachePath) && (extPath == null || !canonical.startsWith(extPath))) {
                            result.error("INVALID_PATH", "Path is outside allowed directories", null)
                            return@setMethodCallHandler
                        }
                        val fileName = "QRCode_${System.currentTimeMillis()}.png"

                        // Try Downloads collection first (API 29+)
                        val contentValues = ContentValues().apply {
                            put(MediaStore.Downloads.DISPLAY_NAME, fileName)
                            put(MediaStore.Downloads.MIME_TYPE, "image/png")
                            put(MediaStore.Downloads.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS)
                            put(MediaStore.Downloads.IS_PENDING, 1)
                        }
                        var uri = contentResolver.insert(
                            MediaStore.Downloads.EXTERNAL_CONTENT_URI,
                            contentValues
                        )

                        // Fallback: try Images collection if Downloads is unavailable
                        if (uri == null) {
                            val imgValues = ContentValues().apply {
                                put(MediaStore.Images.Media.DISPLAY_NAME, fileName)
                                put(MediaStore.Images.Media.MIME_TYPE, "image/png")
                                put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS)
                                put(MediaStore.Images.Media.IS_PENDING, 1)
                            }
                            uri = contentResolver.insert(
                                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                                imgValues
                            )
                        }

                        if (uri != null) {
                            val stream = contentResolver.openOutputStream(uri)
                            if (stream == null) {
                                contentResolver.delete(uri, null, null)
                                result.error("SAVE_FAILED", "Failed to open output stream", null)
                                return@setMethodCallHandler
                            }
                            stream.use { outputStream ->
                                file.inputStream().use { inputStream ->
                                    inputStream.copyTo(outputStream)
                                }
                            }
                            val doneValues = ContentValues().apply { put(MediaStore.Images.Media.IS_PENDING, 0) }
                            contentResolver.update(uri, doneValues, null, null)
                            result.success("Download/$fileName")
                        } else {
                            result.error("SAVE_FAILED", "ContentResolver.insert returned null", null)
                        }
                    } catch (e: Exception) {
                        result.error("SAVE_FAILED", e.message, null)
                    }
                }
                "getNavigationMode" -> {
                    try {
                        val mode = android.provider.Settings.Secure.getInt(
                            contentResolver,
                            "navigation_mode"
                        )
                        result.success(mode)
                    } catch (e: Exception) {
                        result.success(-1)
                    }
                }
                "addTile" -> {
                    try {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                            val component = android.content.ComponentName(
                                this@MainActivity,
                                ScanTileService::class.java
                            )
                            val sm = getSystemService(android.content.Context.STATUS_BAR_SERVICE)
                                as android.app.StatusBarManager
                            sm.requestAddTileService(
                                component,
                                getString(R.string.tile_label),
                                Icon.createWithResource(this, R.drawable.ic_tile_qr),
                                // The callback calls MethodChannel.Result, which is
                                // @UiThread. A background executor would deliver it
                                // off the platform thread, and a new one per call
                                // would leak a thread that is never shut down.
                                mainExecutor
                            ) {
                                result.success(it == android.app.StatusBarManager.TILE_ADD_REQUEST_RESULT_TILE_ADDED)
                            }
                        } else {
                            // Pre-13: open Quick Settings edit directly
                            startActivity(Intent(Settings.ACTION_SETTINGS))
                            result.success(false) // couldn't programmatically add
                        }
                    } catch (e: Exception) {
                        result.error("ADD_TILE_FAILED", e.message, null)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun parseIcsTime(ics: String): Long? {
        return try {
            when (ics.length) {
                8 -> { // YYYYMMDD (all-day)
                    val sdf = SimpleDateFormat("yyyyMMdd", Locale.US)
                    sdf.timeZone = TimeZone.getTimeZone("UTC")
                    sdf.parse(ics)?.time
                }
                15 -> { // YYYYMMDDTHHMMSSZ (UTC)
                    val sdf = SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'", Locale.US)
                    sdf.timeZone = TimeZone.getTimeZone("UTC")
                    sdf.parse(ics)?.time
                }
                16 -> { // YYYYMMDDTHHMMSS (local floating time)
                    val sdf = SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.US)
                    sdf.parse(ics)?.time
                }
                else -> null
            }
        } catch (_: Exception) {
            null
        }
    }
}
