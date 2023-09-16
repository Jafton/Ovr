// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/actions/actions.dart' as action_blocks;

import 'package:firebase_auth/firebase_auth.dart';

Future<String> reAuth(
  String currentEMail,
  String currentPassword,
  String newEMail,
) async {
  User? currentUser = FirebaseAuth.instance.currentUser;
  String result = "";
  if (currentUser == null) {
    result = "";
  } else {
    try {
      AuthCredential credential = EmailAuthProvider.credential(
          email: currentUser.email ?? currentEMail, password: currentPassword);
      await currentUser.reauthenticateWithCredential(credential);
      await currentUser.verifyBeforeUpdateEmail(newEMail);
      await currentUser.updateEmail(newEMail);
    } catch (ex) {
      return ex.toString();
    }
  }
  return result;
}
