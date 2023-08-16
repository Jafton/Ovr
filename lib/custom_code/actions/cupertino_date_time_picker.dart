// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

Future cupertinoDateTimePicker(BuildContext context) async {
  DateTime time = DateTime.now();
  showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
            height: 190,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  height: 180,
                  child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (val) {
                        {
                          time = val;
                        }
                        ;
                      }),
                ),
              ],
            ),
          ));
}
