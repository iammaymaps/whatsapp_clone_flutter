import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/common/widgets/error.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/loginScreen.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/otp_Screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case OTPScreens.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => OTPScreens(
                verificationId: verificationId,
              ));
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(error: 'This page doesn\'t exist'),
              ));
  }
}
