import 'package:first_app/screens/auth/view/Login.dart';
import 'package:first_app/screens/auth/view/Onboarding.dart';
import 'package:first_app/screens/auth/view/Signup.dart';
import 'package:first_app/screens/auth/view/forgotpassword.dart';
import 'package:first_app/screens/auth/view/otp-verification.dart';
import 'package:first_app/screens/auth/view/verify-contact-details.dart';

import 'app_routes.dart';
import 'package:get/route_manager.dart';

abstract class AppPages{
  static final List<GetPage> pages=[
    GetPage(name: Routes.onboarding,page: ()=> Onboarding()),
    GetPage(name: Routes.login,page: ()=>const Login()),
    GetPage(name:Routes.forgotPassword,page: ()=>const ForgotPassword()),
    GetPage(name: Routes.signup, page: ()=>const Signup()),
    GetPage(name:Routes.otpVerification,page: ()=>const OtpVerification()),
    GetPage(name: Routes.verifyContactDetails, page: ()=>const VerifyContactDetails()),

  ];
}

