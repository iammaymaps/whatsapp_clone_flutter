import 'package:flutter/widgets.dart';

class OTPScreens extends StatefulWidget {
  const OTPScreens({
    Key? key,
    required this.verificationId,
  }) : super(key: key);
  static const routeName = '/otp-screen';
  final String verificationId;
  @override
  State<OTPScreens> createState() => _OTPScreensState();
}

class _OTPScreensState extends State<OTPScreens> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
