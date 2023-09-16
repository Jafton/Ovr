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

import 'package:firebase_storage/firebase_storage.dart';

Future deleteVideo(String urlFile) async {
  // accept videopath then delete video from firebase
// Create a reference to the video file in Firebase Storage
  final reference = FirebaseStorage.instance.refFromURL(urlFile);

// Delete the video file
  await reference.delete();

// Return a success message
  //return "Video deleted successfully";
}
