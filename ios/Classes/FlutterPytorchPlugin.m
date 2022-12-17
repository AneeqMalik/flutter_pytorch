#import "FlutterPytorchPlugin.h"
#if __has_include(<flutter_pytorch/flutter_pytorch-Swift.h>)
#import <flutter_pytorch/flutter_pytorch-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_pytorch-Swift.h"
#endif

@implementation FlutterPytorchPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPytorchPlugin registerWithRegistrar:registrar];
}
@end
