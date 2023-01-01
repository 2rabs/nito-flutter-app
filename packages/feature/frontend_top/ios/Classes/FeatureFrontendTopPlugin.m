#import "FeatureFrontendTopPlugin.h"
#if __has_include(<feature_frontend_top/feature_frontend_top-Swift.h>)
#import <feature_frontend_top/feature_frontend_top-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "feature_frontend_top-Swift.h"
#endif

@implementation FeatureFrontendTopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFeatureFrontendTopPlugin registerWithRegistrar:registrar];
}
@end
