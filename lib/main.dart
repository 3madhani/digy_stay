import 'package:digy_stay/feature/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/helper/on_generate_routes.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'feature/settings/presentation/view_model/settings_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize shared preferences
  await Prefs.init();
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsViewModel(),
      child: DigyStay(),
    ),
  );
}

class DigyStay extends StatelessWidget {
  const DigyStay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsViewModel>(
      builder: (context, settingsViewModel, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode:
              settingsViewModel.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: settingsViewModel.selectedColor,
              brightness: Brightness.light,
            ),
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: settingsViewModel.selectedColor,
              brightness: Brightness.dark,
            ),
          ),
          onGenerateRoute: onGenerateRoute,
          initialRoute: SplashView.routeName,
        );
      },
    );
  }
}
