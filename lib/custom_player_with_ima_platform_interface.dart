import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'custom_player_with_ima_method_channel.dart';

abstract class CustomPlayerWithImaPlatform extends PlatformInterface {
  /// Constructs a CustomPlayerWithImaPlatform.
  CustomPlayerWithImaPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomPlayerWithImaPlatform _instance = MethodChannelCustomPlayerWithIma();

  /// The default instance of [CustomPlayerWithImaPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomPlayerWithIma].
  static CustomPlayerWithImaPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomPlayerWithImaPlatform] when
  /// they register themselves.
  static set instance(CustomPlayerWithImaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> loadUrl(String url) async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> pauseVideo() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> resumeVideo() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Widget getPlayer({required double width, required double height, required String videoUrl}) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
