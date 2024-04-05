import 'package:flutter/material.dart';
import 'package:test_quick_actions/config/configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  QuickActionsPlugin.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
