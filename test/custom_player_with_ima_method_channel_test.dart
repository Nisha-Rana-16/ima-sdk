import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_player_with_ima/custom_player_with_ima_method_channel.dart';

void main() {
  MethodChannelCustomPlayerWithIma platform = MethodChannelCustomPlayerWithIma();
  const MethodChannel channel = MethodChannel('custom_player_with_ima');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
