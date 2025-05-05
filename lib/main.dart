import 'package:digy_stay/feature/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'core/helper/on_generate_routes.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize shared preferences
  await Prefs.init();
  runApp(const DigyStay());
}

class DigyStay extends StatelessWidget {
  const DigyStay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
