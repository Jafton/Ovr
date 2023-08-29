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

// Import the necessary packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkExerciseNameAvailability(String name, String id) async {
  // Get the instance of Firebase Auth and Firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    // Check if the username is already in use by another user
    bool isUsernameInUse = false;
    QuerySnapshot querySnapshot = await _firestore
        .collection('exercise')
        .where('name', isEqualTo: name)
        .where('userid', isEqualTo: id)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      // Username is in use
      isUsernameInUse = true;
    }

    // Return the result
    return !isUsernameInUse;
  } catch (e) {
    print('Error checking username availability: $e');
    throw Exception('Failed to check username availability.');
  }
}
