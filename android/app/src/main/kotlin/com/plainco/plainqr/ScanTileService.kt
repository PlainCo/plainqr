package com.plainco.plainqr

import android.app.PendingIntent
import android.content.Intent
import android.graphics.drawable.Icon
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService

class ScanTileService : TileService() {

    override fun onStartListening() {
        super.onStartListening()
        qsTile?.icon = Icon.createWithResource(this, R.drawable.ic_tile_qr)
        qsTile?.state = Tile.STATE_ACTIVE
        qsTile?.label = "PlainQR"
        qsTile?.subtitle = "Tap to scan"
        qsTile?.updateTile()
    }

    override fun onClick() {
        val intent = Intent(this@ScanTileService, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK
        }
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            PendingIntent.FLAG_IMMUTABLE
        )
        startActivityAndCollapse(pendingIntent)
    }
}
