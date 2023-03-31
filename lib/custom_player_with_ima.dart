
import 'package:flutter/cupertino.dart';

import 'custom_player_with_ima_platform_interface.dart';

class CustomPlayerWithIma {
  Future<String?> getPlatformVersion() {
    return CustomPlayerWithImaPlatform.instance.getPlatformVersion();
  }

  Future<void> loadUrl(String url) async {
    assert(url != null);
    return CustomPlayerWithImaPlatform.instance.loadUrl(url);
  }

  Future<void> pauseVideo() async {
    return CustomPlayerWithImaPlatform.instance.pauseVideo();
  }

  Future<void> resumeVideo() async {
    return CustomPlayerWithImaPlatform.instance.resumeVideo();
  }

  Widget getPlayer({required double width, required double height, required String videoUrl}) {
    return CustomPlayerWithImaPlatform.instance.getPlayer(width: width, height: height, videoUrl: videoUrl);
  }



}
