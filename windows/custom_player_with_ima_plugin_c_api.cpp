#include "include/custom_player_with_ima/custom_player_with_ima_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "custom_player_with_ima_plugin.h"

void CustomPlayerWithImaPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  custom_player_with_ima::CustomPlayerWithImaPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
