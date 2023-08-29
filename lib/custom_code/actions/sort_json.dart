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

Future<dynamic> sortJson(dynamic countries) async {
  // accept json sort $[:].name.common this path alphabetically and return json
  List<dynamic> sortedCountries = List.from(countries);
  sortedCountries
      .sort((a, b) => a['name']['common'].compareTo(b['name']['common']));
  return sortedCountries;
}
