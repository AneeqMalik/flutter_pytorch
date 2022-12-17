import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pytorch/flutter_pytorch_method_channel.dart';

void main() {
  MethodChannelFlutterPytorch platform = MethodChannelFlutterPytorch();
  const MethodChannel channel = MethodChannel('flutter_pytorch');

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
