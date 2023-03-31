import Flutter
import UIKit

public class SwiftCustomPlayerWithImaPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "custom_player_with_ima", binaryMessenger: registrar.messenger())
    let instance = SwiftCustomPlayerWithImaPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
