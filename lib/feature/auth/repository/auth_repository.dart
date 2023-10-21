import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/feature/auth/screens/otp_Screen.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firebase;
  AuthRepository({
    required this.auth,
    required this.firebase,
  });

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            await auth.signInWithCredential(credential);
          },
          verificationFailed: (e) {
            throw Exception(e.message);
          },
          codeSent: ((String verificationID, int? resendToken) async {
            Navigator.pushNamed(context, OTPScreens.routeName,
                arguments: verificationID);
          }),
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (e) {}
  }
}
