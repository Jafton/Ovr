// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

class CupertionDateTime extends StatefulWidget {
  const CupertionDateTime({
    Key? key,
    this.width,
    this.height,
    required this.time,
  }) : super(key: key);
  final double? width;
  final double? height;
  final DateTime time;
  @override
  _CupertionDateTimeState createState() => _CupertionDateTimeState();
}

class _CupertionDateTimeState extends State<CupertionDateTime> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoThemeData(brightness: Brightness.dark),
      child: CupertinoDatePicker(
        // backgroundColor: Color.fromRGBO(31, 47, 66, 1.0),
        minimumYear: 1920,
        maximumDate: widget.time,
        mode: CupertinoDatePickerMode.date,
        initialDateTime: FFAppState().dateOfBirth != null
            ? FFAppState().dateOfBirth
            : widget.time,
        onDateTimeChanged: (val) {
          FFAppState().update(() {
            FFAppState().dateOfBirth = val;
          });
        },
      ),
    );
  }
}
