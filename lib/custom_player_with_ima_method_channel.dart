import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_player_with_ima_platform_interface.dart';

/// An implementation of [CustomPlayerWithImaPlatform] that uses method channels.
class MethodChannelCustomPlayerWithIma extends CustomPlayerWithImaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  MethodChannel methodChannel = const MethodChannel('custom_player_with_ima');

  String viewType = 'NativeUI';

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> loadUrl(String url) async {
    assert(url != null);
    return methodChannel.invokeMethod('loadUrl', url);
  }

  @override
  Future<void> pauseVideo() async {
    return methodChannel.invokeMethod('pauseVideo', 'pauseVideo');
  }

  @override
  Future<void> resumeVideo() async {
    return methodChannel.invokeMethod('resumeVideo', 'resumeVideo');
  }

  @override
  Widget getPlayer({required double width, required double height, required String videoUrl}) {
    return nativeView(width, height, videoUrl);
  }

  Future<void> onPlatformViewCreated(id) async {
    methodChannel = const MethodChannel('custom_player_with_ima');
  }

  nativeView(double width, double height, String videoUrl) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: viewType,
        onPlatformViewCreated: onPlatformViewCreated,
        creationParams: <String,dynamic>{
          "x": 0.0,
          "y": 0.0,
          "width": width,
          "height": height,
          "videoURL": videoUrl,
        },
        //"https://storage.googleapis.com/gvabox/media/samples/stock.mp4"

        creationParamsCodec: const StandardMessageCodec(),
      );
    } else {
      return UiKitView(
        viewType: viewType,
        onPlatformViewCreated: onPlatformViewCreated,
        creationParams: <String,dynamic>{
          "x": 0.0,
          "y": 0.0,
          "width": width,
          "height": height,
          "videoURL": videoUrl
        },
        creationParamsCodec: const StandardMessageCodec(),
      );
    }
  }
}
