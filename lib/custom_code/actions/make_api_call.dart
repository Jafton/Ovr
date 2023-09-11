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

import 'dart:async'; // Import the dart:async library

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'package:http/http.dart' as http;

Future<bool?> makeApiCall() async {
  var result = waitPrint();
  //.timeout(const Duration(seconds: 5));
  return result;
  final response = await http
      .get(Uri.parse('https://restcountries.com/v3.1/capital/tallinn'));

  if (response.statusCode == 200) {
    // If the API call is successful (status code 200), there is a response.
    return true;
  } else {
    // If there is no response (status code is not 200), return false.
    return false;
  }
}

Future<bool> waitPrint() async {
  await Future.delayed(const Duration(seconds: 5));
  return false;
}
