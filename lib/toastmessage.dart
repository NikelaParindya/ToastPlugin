
import 'toastmessage_platform_interface.dart';

class Toastmessage {
  Future<String?> getPlatformVersion() {
    return ToastmessagePlatform.instance.getPlatformVersion();
  }
}
