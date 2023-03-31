package com.example.custom_player_with_ima

import android.app.Activity
import android.content.Context
import com.google.android.exoplayer2.ExoPlayer
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.PluginRegistry.Registrar
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory


class NativeViewFactory(private val methodChannel: io.flutter.plugin.common.MethodChannel,private val activity: Activity) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
        val creationParams = args as Map<String?, Any?>?
        return NativeView(context, viewId, creationParams, activity,methodChannel)
    }
}