#import "CustomPlayerWithImaPlugin.h"
#if __has_include(<custom_player_with_ima/custom_player_with_ima-Swift.h>)
#import <custom_player_with_ima/custom_player_with_ima-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_player_with_ima-Swift.h"
#endif

@implementation CustomPlayerWithImaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomPlayerWithImaPlugin registerWithRegistrar:registrar];
}
@end
