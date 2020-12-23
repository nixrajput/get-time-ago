#import "GetTimeAgoPlugin.h"
#if __has_include(<get_time_ago/get_time_ago-Swift.h>)
#import <get_time_ago/get_time_ago-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_time_ago-Swift.h"
#endif

@implementation GetTimeAgoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetTimeAgoPlugin registerWithRegistrar:registrar];
}
@end
