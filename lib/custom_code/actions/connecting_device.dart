// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future<bool> connectingDevice() async {
  // Add your function code here!
  // action makes a dellay for 2 sec and returns randomly true or false
  await Future.delayed(Duration(seconds: 2)); // wait for 2 seconds
  return Random().nextBool(); // return a random boolean value}
}
