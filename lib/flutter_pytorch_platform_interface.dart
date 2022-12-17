import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_pytorch_method_channel.dart';

abstract class FlutterPytorchPlatform extends PlatformInterface {
  /// Constructs a FlutterPytorchPlatform.
  FlutterPytorchPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPytorchPlatform _instance = MethodChannelFlutterPytorch();

  /// The default instance of [FlutterPytorchPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPytorch].
  static FlutterPytorchPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPytorchPlatform] when
  /// they register themselves.
  static set instance(FlutterPytorchPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
