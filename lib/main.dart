import 'package:digy_stay/feature/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'core/helper/on_generate_routes.dart';
import 'core/services/shared_preferences_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize shared preferences
  await Prefs.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SueEllenFrancisco'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
