import 'package:digy_stay/feature/home/presentaion/views/home_view.dart';
import 'package:digy_stay/feature/offers/presentation/views/offers_view.dart';
import 'package:digy_stay/feature/restaurant/presentation/views/restaurant_view.dart';
import 'package:digy_stay/feature/room_control/presentaion/views/room_control_view.dart';
import 'package:digy_stay/feature/support_chat/presentation/views/support_chat_view.dart';
import 'package:flutter/material.dart';

import '../../feature/auth/presentation/views/login_view.dart';
import '../../feature/auth/presentation/views/sign_up_view.dart';
import '../../feature/onboarding/presentation/views/onboarding_view.dart';
import '../../feature/splash/presentaion/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case RoomControlView.routeName:
      return MaterialPageRoute(builder: (_) => const RoomControlView());
    case RestaurantView.routeName:
      return MaterialPageRoute(builder: (_) => const RestaurantView());
    case SupportChatView.routeName:
      return MaterialPageRoute(builder: (_) => const SupportChatView());
    case OffersView.routeName:
      return MaterialPageRoute(builder: (_) => const OffersView());
    default:
      return MaterialPageRoute(
        builder:
            (_) => const Scaffold(body: Center(child: Text('404 Not Found'))),
      );
  }
}
