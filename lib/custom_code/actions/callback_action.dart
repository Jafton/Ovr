// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future callbackAction(
  String photoPath,
  String docReference,
) async {
  // Add your function code here!
  CollectionReference users = FirebaseFirestore.instance.collection('user');

  users
      .doc(docReference)
      .update({'photo_url': '$photoPath'})
      .then((value) => print("User Updated"))
      .catchError((error) => print("Failed to update user: $error"));
}
