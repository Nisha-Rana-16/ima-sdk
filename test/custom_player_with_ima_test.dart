import 'package:flutter_test/flutter_test.dart';
import 'package:custom_player_with_ima/custom_player_with_ima.dart';
import 'package:custom_player_with_ima/custom_player_with_ima_platform_interface.dart';
import 'package:custom_player_with_ima/custom_player_with_ima_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCustomPlayerWithImaPlatform 
    with MockPlatformInterfaceMixin
    implements CustomPlayerWithImaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CustomPlayerWithImaPlatform initialPlatform = CustomPlayerWithImaPlatform.instance;

  test('$MethodChannelCustomPlayerWithIma is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCustomPlayerWithIma>());
  });

  test('getPlatformVersion', () async {
    CustomPlayerWithIma customPlayerWithImaPlugin = CustomPlayerWithIma();
    MockCustomPlayerWithImaPlatform fakePlatform = MockCustomPlayerWithImaPlatform();
    CustomPlayerWithImaPlatform.instance = fakePlatform;
  
    expect(await customPlayerWithImaPlugin.getPlatformVersion(), '42');
  });
}
