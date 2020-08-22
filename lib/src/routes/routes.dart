import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:last_pass/src/pages/credentials.dart';
import 'package:last_pass/src/pages/dashboard.dart';
import 'package:last_pass/src/pages/onboarding.dart';
import 'package:last_pass/src/pages/registerPassword.dart';
import 'package:last_pass/src/pages/splash.dart';
import 'package:last_pass/src/utils/page_transition.dart';

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (context) => SplashScreen());
      break;
    case 'onboarding':
      return PageTransition(
        child: OnBoardingScreen(),
        type: PageTransitionType.fade,
      );
      break;
    case 'credentials':
      return PageTransition(
        child: CredentialsScreen(),
        type: PageTransitionType.fade,
      );
      break;
    case 'dashboard':
      return PageTransition(
        child: DashboardScreen(),
        type: PageTransitionType.fade,
      );
      break;
    case 'registerPassword':
      return PageTransition(
        child: RegisterPasswordScreen(),
        type: PageTransitionType.fade,
      );
      break;
    default:
      return MaterialPageRoute(builder: (context) => OnBoardingScreen());
  }
}
