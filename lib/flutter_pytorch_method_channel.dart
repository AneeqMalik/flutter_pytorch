import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_pytorch_platform_interface.dart';

/// An implementation of [FlutterPytorchPlatform] that uses method channels.
class MethodChannelFlutterPytorch extends FlutterPytorchPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_pytorch');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
