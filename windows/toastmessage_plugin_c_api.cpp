#include "include/toastmessage/toastmessage_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "toastmessage_plugin.h"

void ToastmessagePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  toastmessage::ToastmessagePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
