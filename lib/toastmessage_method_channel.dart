import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'toastmessage_platform_interface.dart';

/// An implementation of [ToastmessagePlatform] that uses method channels.
class MethodChannelToastmessage extends ToastmessagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('toastmessage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
