package com.arre.voice

import android.content.Intent
import android.os.Bundle
//import com.ryanheise.audioservice.AudioServiceActivity
import io.flutter.embedding.android.FlutterActivity
import android.content.Intent.FLAG_ACTIVITY_NEW_TASK


class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        startService(Intent(baseContext, MyService::class.java))
//        startActivity(Intent(baseContext, AudioServiceActivity::class.java))

    }
}
