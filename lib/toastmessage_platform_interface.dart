import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'toastmessage_method_channel.dart';

abstract class ToastmessagePlatform extends PlatformInterface {
  /// Constructs a ToastmessagePlatform.
  ToastmessagePlatform() : super(token: _token);

  static final Object _token = Object();

  static ToastmessagePlatform _instance = MethodChannelToastmessage();

  /// The default instance of [ToastmessagePlatform] to use.
  ///
  /// Defaults to [MethodChannelToastmessage].
  static ToastmessagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ToastmessagePlatform] when
  /// they register themselves.
  static set instance(ToastmessagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
