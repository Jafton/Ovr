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

import 'package:ovr_performance/backend/firebase_storage/storage.dart';

Future<String?> uploadDataa(FFUploadedFile image) async {
  var a = uploadData('/images/${image.name}', image.bytes!);
  return a;
}
