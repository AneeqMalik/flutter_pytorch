import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pytorch/flutter_pytorch.dart';
import 'package:flutter_pytorch/flutter_pytorch_platform_interface.dart';
import 'package:flutter_pytorch/flutter_pytorch_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPytorchPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPytorchPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPytorchPlatform initialPlatform = FlutterPytorchPlatform.instance;

  test('$MethodChannelFlutterPytorch is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPytorch>());
  });

  test('getPlatformVersion', () async {
    FlutterPytorch flutterPytorchPlugin = FlutterPytorch();
    MockFlutterPytorchPlatform fakePlatform = MockFlutterPytorchPlatform();
    FlutterPytorchPlatform.instance = fakePlatform;

    expect(await flutterPytorchPlugin.getPlatformVersion(), '42');
  });
}
