import 'package:flutter_test/flutter_test.dart';
import 'package:toastmessage/toastmessage.dart';
import 'package:toastmessage/toastmessage_platform_interface.dart';
import 'package:toastmessage/toastmessage_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockToastmessagePlatform
    with MockPlatformInterfaceMixin
    implements ToastmessagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ToastmessagePlatform initialPlatform = ToastmessagePlatform.instance;

  test('$MethodChannelToastmessage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelToastmessage>());
  });

  test('getPlatformVersion', () async {
    Toastmessage toastmessagePlugin = Toastmessage();
    MockToastmessagePlatform fakePlatform = MockToastmessagePlatform();
    ToastmessagePlatform.instance = fakePlatform;

    expect(await toastmessagePlugin.getPlatformVersion(), '42');
  });
}

class Toastmessage {
  getPlatformVersion() {}
}
