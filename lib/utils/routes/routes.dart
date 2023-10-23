import 'package:flutter/material.dart';
import 'package:quick_technology/utils/routes/route_name.dart';
import 'package:quick_technology/view/Passanger%20view/Passenger%20Drawer/passenger_willet.dart';
import 'package:quick_technology/view/auth/login_screen.dart';
import 'package:quick_technology/view/auth/phone_verification.dart';
import 'package:quick_technology/view/auth/registration_screen.dart';
import 'package:quick_technology/view/onBoarding/on_bording_screen.dart';

import '../../view/Passanger view/home/home_screen.dart';
import '../../view/splash/splash_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.Splash:
      return MaterialPageRoute(builder: (BuildContext context) => SplashPage());
      case RoutesName.logIn:
        return MaterialPageRoute(builder: (BuildContext context) => LoginPage());
      case RoutesName.verifyPhone:
        return MaterialPageRoute(builder: (BuildContext context) => VerificationNumber());
      case RoutesName.Registration:
        return MaterialPageRoute(builder: (BuildContext context) => RegistrationPage());
      case RoutesName.onBoarding:
        return MaterialPageRoute(builder: (BuildContext context) => OnBordingPage());
      case RoutesName.Home:
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      case RoutesName.pwallet:
        return MaterialPageRoute(builder: (BuildContext context) => PassengerWillet());
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text(
                  'No Routes Define'
              ),
            ),
          );
        });
    }
  }
}