//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <custom_player_with_ima/custom_player_with_ima_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) custom_player_with_ima_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CustomPlayerWithImaPlugin");
  custom_player_with_ima_plugin_register_with_registrar(custom_player_with_ima_registrar);
}
