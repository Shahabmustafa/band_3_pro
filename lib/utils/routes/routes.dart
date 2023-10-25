import 'package:band_two_pro/utils/routes/route_name.dart';
import 'package:band_two_pro/view/auth/brand/band_otp_code_screen.dart';
import 'package:band_two_pro/view/auth/brand/band_register_screen.dart';
import 'package:band_two_pro/view/auth/organizer/organizer_about.dart';
import 'package:band_two_pro/view/auth/organizer/organizer_open.dart';
import 'package:band_two_pro/view/auth/organizer/organizer_photo_link.dart';
import 'package:band_two_pro/view/auth/organizer/organizer_premium.dart';
import 'package:band_two_pro/view/bottom%20navigation%20bar/setting/setting_notification_screen.dart';
import 'package:flutter/material.dart';
import '../../res/component/on_boarding_screen.dart';
import '../../view/auth/brand/band_about.dart';
import '../../view/auth/brand/band_phone_link.dart';
import '../../view/auth/brand/band_verify_number.dart';
import '../../view/auth/login_screen.dart';
import '../../view/auth/organizer/organizer_otp_code_screen.dart';
import '../../view/auth/organizer/organizer_register_screen.dart';
import '../../view/auth/organizer/organizer_venue.dart';
import '../../view/auth/organizer/organizer_verify_number.dart';
import '../../view/auth/register_screen.dart';
import '../../view/bottom navigation bar/bottom_navigation_bar_screen.dart';
import '../../view/location/select_location.dart';
import '../../view/splash/splash_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.Splash:
      return MaterialPageRoute(builder: (BuildContext context) => const SplashPage());
      case RoutesName.logIn:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginPage());
      case RoutesName.Registration:
        return MaterialPageRoute(builder: (BuildContext context) => const RegisterPage());
      case RoutesName.onBoarding:
        return MaterialPageRoute(builder: (BuildContext context) => const OnBoardingPage());
        // band navigation routes
      case RoutesName.bandVerifyNumber:
        return MaterialPageRoute(builder: (BuildContext context) => const BandVerifyNumber());
      case RoutesName.bandAbout:
        return MaterialPageRoute(builder: (BuildContext context) => const BandAbout());
      case RoutesName.bandRegister:
        return MaterialPageRoute(builder: (BuildContext context) => const BandRegistration());
      case RoutesName.bandOTPCode:
        return MaterialPageRoute(builder: (BuildContext context) => const BandOTPCode());
      case RoutesName.bandPhoneLink:
        return MaterialPageRoute(builder: (BuildContext context) => const BandPhoneLink());
      case RoutesName.location:
        return MaterialPageRoute(builder: (BuildContext context) => const SelectLanguage());
        // Orginzerd navigation routes
      case RoutesName.orginzerOTPCode:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerOTPCodePage());
      case RoutesName.orginzerRegister:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerRegistration());
      case RoutesName.orginzerVerifyNumber:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerVerifyNumber());
      case RoutesName.orginzerAbout:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerAbout());
      case RoutesName.orginzerVenue:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerVenue());
      case RoutesName.orginzerOpen:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerOpen());
      case RoutesName.orginzerPhotoLink:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerPhotoLink());
      case RoutesName.orginzerPremium:
        return MaterialPageRoute(builder: (BuildContext context) => const OrganizerPremium());
      case RoutesName.bottomNavigationBarPage:
        return MaterialPageRoute(builder: (BuildContext context) => const BottomNaviigationBarPage());
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