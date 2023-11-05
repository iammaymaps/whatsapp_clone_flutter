import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/common/widgets/error.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/loginScreen.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/otp_Screen.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/userInformationScreen.dart';
import 'package:whatsapp_clone_flutter/feature/select_contact/Select_Contact_Screens.dart';
import 'package:whatsapp_clone_flutter/screens/mobile_chat_screen.dart';

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

    case SelectContactScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const SelectContactScreen());
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const UserInformationScreen());
    case MobileChatScreen.routeName:
      final arguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
          builder: (context) => const MobileChatScreen(
                name: 'RR',
                uid: '12345',
              ));
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(error: 'This page doesn\'t exist'),
              ));
  }
}
