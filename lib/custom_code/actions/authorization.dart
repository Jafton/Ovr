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

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> authorization(
  String email,
  String password,
) async {
  // Accept email and password, and attempt Firebase authorization
  try {
    // Attempt to sign in with email and password
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Return true if successful authorization
    return true;
  } catch (e) {
    // Print the error for debugging purposes
    print('Error during authorization: $e');

    // Return false if there was an error during authorization
    return false;
  }
}
