import 'dart:developer';

import 'package:quick_actions/quick_actions.dart';
import 'package:test_quick_actions/config/configs.dart';

class QuickActionsPlugin {
  static initialize() {
    const QuickActions quickActions = QuickActions();
    quickActions.initialize((shortcutType) {
      log(shortcutType);

      router.push("/$shortcutType");

      // More handling code...
    });

    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'favorites', localizedTitle: 'Favorites', icon: 'favorites'),
      const ShortcutItem(
          type: 'qrcode', localizedTitle: 'Qrcode', icon: 'qrcode'),
      const ShortcutItem(
          type: 'profile', localizedTitle: 'Profile', icon: 'profile'),
    ]);
  }
}
