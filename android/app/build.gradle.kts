import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

// Load keystore properties from android/key.properties (git-ignored)
val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.plainco.plainqr"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.plainco.plainqr"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        // ⛔ DO NOT change this to flutter.versionCode or any fixed integer.
        // Play Console tracks the highest versionCode ever uploaded. Switching schemes
        // resets the number and causes a silent downgrade — rollouts are blocked with a
        // misleading "device targeting" error. This happened on 2026-07-21 (see PROJECT_STATE.md).
        versionCode = runCatching {
            val proc = ProcessBuilder("git", "rev-list", "--count", "HEAD")
                .directory(project.rootDir.parentFile)
                .start()
            proc.inputStream.bufferedReader().readText().trim().toInt()
        }.getOrElse { flutter.versionCode }
        versionName = flutter.versionName
        ndk {
            abiFilters += listOf("arm64-v8a", "armeabi-v7a", "x86_64")
        }
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as? String ?: ""
            keyPassword = keystoreProperties["keyPassword"] as? String ?: ""
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as? String ?: ""
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
        }
    }
}

flutter {
    source = "../.."
}
