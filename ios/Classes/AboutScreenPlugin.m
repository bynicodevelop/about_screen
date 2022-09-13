#import "AboutScreenPlugin.h"
#if __has_include(<about_screen/about_screen-Swift.h>)
#import <about_screen/about_screen-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "about_screen-Swift.h"
#endif

@implementation AboutScreenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAboutScreenPlugin registerWithRegistrar:registrar];
}
@end
