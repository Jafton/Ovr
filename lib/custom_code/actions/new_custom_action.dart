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

Future<List<String>> newCustomAction(
  String? string,
  List<String>? countries,
) async {
  // Filter countries which include the given string and return them
  List<String> filteredCountries = [];

  if (string != null && string.isNotEmpty && countries != null) {
    for (String country in countries) {
      if (country.toLowerCase().contains(string.toLowerCase())) {
        filteredCountries.add(country);
      }
    }
  }
  filteredCountries?.sort();

  // If the provided string is null or empty, return the original countries list
  if (string == null || string.isEmpty || countries == null) {
    countries?.sort();
    return countries ?? [];
  }

  return filteredCountries;
}
