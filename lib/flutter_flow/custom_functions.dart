import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int checkListLength(List<String> list) {
  return list.length;
}

bool isCorrectEmail(String email) {
  // check if email is correct return bool
  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  return isValidEmail(email);
}

bool isEmailExist(String? email) {
  // accepts user email, check if email exists in firebase return bool
  bool emailExists = false;
  FirebaseFirestore.instance
      .collection('user')
      .where('email', isEqualTo: email)
      .get()
      .then((QuerySnapshot querySnapshot) {
    if (querySnapshot.docs.isNotEmpty) {
      emailExists = true;
    }
  });
  return emailExists;
}

bool validatorPassHasDigits(String password) {
  bool hasDigits = RegExp(r'[0-9]').hasMatch(password);
  if (hasDigits && password.isNotEmpty) {
    return false;
  }
  return true;
}

bool validatorPassHasLowercase(String password) {
  bool hasLowercase = RegExp(r'[a-z]').hasMatch(password);
  if (hasLowercase && password.isNotEmpty) {
    return false;
  }
  return true;
}

bool validatorPassHasUppercase(String password) {
  bool hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
  if (hasUppercase && password.isNotEmpty) {
    return false;
  }
  return true;
}

bool validatorPassHasMinLength(
  String password,
  int minLength,
) {
  bool hasMinLength = password.length >= minLength;
  if (hasMinLength && password.isNotEmpty) {
    return false;
  }
  return true;
}

bool validatorPassHasMaxLength(
  String password,
  int maxLength,
) {
  // check if password length is more than maxLength
  bool hasMaxLength = password.length <= maxLength;
  if (hasMaxLength && password.isNotEmpty) {
    return false;
  }
  return true;
}

int stringToInt(String? string) {
  // accept string convert it to int and return it
  return int.parse(string!);
}

String removeLettersFromString(String inputString) {
  // Define a regular expression pattern to match only numbers
  String numericPattern = r'[a-zA-Z]';

  // Use the regular expression to filter out non-numeric characters
  String result = inputString.replaceAll(RegExp(numericPattern), '');

  return result;
}

List<dynamic>? getPhoneNumberCountriesList() {
  return [
    //$[:].cca2
//$[:].name.common
    {
      "name": {"common": "United States"},
      "flag": "🇺🇸",
      "code": "US",
      "dial_code": "+1",
      "cca2": "US"
    },
    {
      "name": {"common": "Canada"},
      "flag": "🇨🇦",
      "code": "CA",
      "dial_code": "+1",
      "cca2": "CA"
    }
  ];
}

List<dynamic> searchCountry(
  List<dynamic> countries,
  String searchingText,
) {
  List<dynamic> sortedCountries = List.from(countries);
  sortedCountries
      .sort((a, b) => a['name']['common'].compareTo(b['name']['common']));

  List<dynamic> processedList = [];
  String? prevFirstLetter;
  for (dynamic element in sortedCountries) {
    // Get the first letter of the current element
    String firstLetter = element.isNotEmpty
        ? element['name']['common'].substring(0, 1).toUpperCase()
        : '';

    // Add the first letter to the processed list if it's different from the previous one
    if (firstLetter != prevFirstLetter) {
      processedList.add({
        'name': {'common': '$firstLetter'}
      });
    }

    // Add the element to the processed list
    if (element['name']['common'].contains('United States') ||
        element['name']['common'].contains('Canada')) {
    } else {
      processedList.add(element);
    }
    // Update the previous first letter for the next iteration
    prevFirstLetter = firstLetter;
  }

  List<dynamic> sortedList = [];
  if (searchingText.isEmpty) {
    return processedList;
  }
  for (dynamic i in sortedCountries) {
    if (i['name']['common']
        .toString()
        .toLowerCase()
        .contains(searchingText.toLowerCase())) {
      if (!i['name']['common'].contains('United States') &&
          !i['name']['common'].contains('Canada')) {
        sortedList.add(i);
      }
    }
  }
  return sortedList;
}

List<dynamic> uSstates(
  String searchingText,
  String country,
) {
  List<Map<String, String>> usaStates = [];

  if (country == 'Canada') {
    usaStates = [
      {"name": "Alberta", "abbreviation": "AB"},
      {"name": "British Columbia", "abbreviation": "BC"},
      {"name": "Manitoba", "abbreviation": "MB"},
      {"name": "New Brunswick", "abbreviation": "NB"},
      {"name": "Newfoundland and Labrador", "abbreviation": "NL"},
      {"name": "Northwest Territories", "abbreviation": "NT"},
      {"name": "Nova Scotia", "abbreviation": "NS"},
      {"name": "Nunavut", "abbreviation": "NU"},
      {"name": "Ontario", "abbreviation": "ON"},
      {"name": "Prince Edward Island", "abbreviation": "PE"},
      {"name": "Quebec", "abbreviation": "QC"},
      {"name": "Saskatchewan", "abbreviation": "SK"},
      {"name": "Yukon", "abbreviation": "YT"},
    ];
  } else {
    usaStates = [
      {"name": "Alabama", "abbreviation": "AL"},
      {"name": "Alaska", "abbreviation": "AK"},
      {"name": "Arizona", "abbreviation": "AZ"},
      {"name": "Arkansas", "abbreviation": "AR"},
      {"name": "California", "abbreviation": "CA"},
      {"name": "Colorado", "abbreviation": "CO"},
      {"name": "Connecticut", "abbreviation": "CT"},
      {"name": "Delaware", "abbreviation": "DE"},
      {"name": "Florida", "abbreviation": "FL"},
      {"name": "Georgia", "abbreviation": "GA"},
      {"name": "Hawaii", "abbreviation": "HI"},
      {"name": "Idaho", "abbreviation": "ID"},
      {"name": "Illinois", "abbreviation": "IL"},
      {"name": "Indiana", "abbreviation": "IN"},
      {"name": "Iowa", "abbreviation": "IA"},
      {"name": "Kansas", "abbreviation": "KS"},
      {"name": "Kentucky", "abbreviation": "KY"},
      {"name": "Louisiana", "abbreviation": "LA"},
      {"name": "Maine", "abbreviation": "ME"},
      {"name": "Maryland", "abbreviation": "MD"},
      {"name": "Massachusetts", "abbreviation": "MA"},
      {"name": "Michigan", "abbreviation": "MI"},
      {"name": "Minnesota", "abbreviation": "MN"},
      {"name": "Mississippi", "abbreviation": "MS"},
      {"name": "Missouri", "abbreviation": "MO"},
      {"name": "Montana", "abbreviation": "MT"},
      {"name": "Nebraska", "abbreviation": "NE"},
      {"name": "Nevada", "abbreviation": "NV"},
      {"name": "New Hampshire", "abbreviation": "NH"},
      {"name": "New Jersey", "abbreviation": "NJ"},
      {"name": "New Mexico", "abbreviation": "NM"},
      {"name": "New York", "abbreviation": "NY"},
      {"name": "North Carolina", "abbreviation": "NC"},
      {"name": "North Dakota", "abbreviation": "ND"},
      {"name": "Ohio", "abbreviation": "OH"},
      {"name": "Oklahoma", "abbreviation": "OK"},
      {"name": "Oregon", "abbreviation": "OR"},
      {"name": "Pennsylvania", "abbreviation": "PA"},
      {"name": "Rhode Island", "abbreviation": "RI"},
      {"name": "South Carolina", "abbreviation": "SC"},
      {"name": "South Dakota", "abbreviation": "SD"},
      {"name": "Tennessee", "abbreviation": "TN"},
      {"name": "Texas", "abbreviation": "TX"},
      {"name": "Utah", "abbreviation": "UT"},
      {"name": "Vermont", "abbreviation": "VT"},
      {"name": "Virginia", "abbreviation": "VA"},
      {"name": "Washington", "abbreviation": "WA"},
      {"name": "West Virginia", "abbreviation": "WV"},
      {"name": "Wisconsin", "abbreviation": "WI"},
      {"name": "Wyoming", "abbreviation": "WY"},
    ];
  }

  List<dynamic> sortedList = [];
  if (searchingText.isEmpty) {
    return usaStates;
  }
  for (dynamic i in usaStates) {
    if (i['name']
        .toString()
        .toLowerCase()
        .contains(searchingText.toLowerCase())) {
      sortedList.add(i);
    }
  }
  return sortedList;
}

List<ExerciseRecord> sortFunction(
  List<ExerciseRecord> exercise,
  String type,
) {
  List<ExerciseRecord> documents = [];
  documents.addAll(exercise);

  switch (type) {
    case 'Name: a-z':
      documents
          .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
      break;
    case 'Name: z-a':
      documents
          .sort((a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
      break;
    case 'Last used':
      documents.sort((a, b) {
        // Handle nullable DateTime values
        final aDate = a.exerciseLastUsed ?? DateTime(0);
        final bDate = b.exerciseLastUsed ?? DateTime(0);
        return bDate.compareTo(aDate);
      });
      break;
    case 'Most popular':
      documents.sort((a, b) =>
          (b.exercisePopularity ?? 0).compareTo(a.exercisePopularity ?? 0));
      break;
  }

  return documents;
}

bool isZero(String? string) {
  // accept string if its first charatcter is equal to 0 return true else return false
  if (string == null || string.isEmpty) {
    return false;
  }
  return string[0] == '0';
}

String removeLeadingZero(String input) {
  if (input.isNotEmpty && input[0] == '0') {
    return input.substring(1);
  }
  return input;
}

bool containsDot(
  String? string,
  String? substring,
) {
  // check if string contains substring and length > 3 return true or false
  if (string == null || substring == null) {
    return false;
  }

  return string.contains('$substring');
}

bool checkForDots(String string) {
  final regex = RegExp(r'^(?!.*\.\.)[a-zA-Z0-9.]+$');
  return regex.hasMatch(string);
}
