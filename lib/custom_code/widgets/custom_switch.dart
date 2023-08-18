// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    Key? key,
    this.width,
    this.height,
    this.state,
    this.docReference,
    required this.setGoal,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? state;
  final String? docReference;
  final bool setGoal;

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool status = false;
  final _controller = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    CollectionReference users = FirebaseFirestore.instance.collection('user');
    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          // Fixed this line
          users
              .doc('${widget.docReference}')
              .update({'${widget.state}': true})
              .then((value) => print("User Updated"))
              .catchError((error) => print("Failed to update user: $error"));

          if (widget.setGoal) {
            FFAppState().update(() {
              FFAppState().isGoalSwitchedOn = true;
            });
          }
        } else {
          users
              .doc('${widget.docReference}')
              .update({'${widget.state}': false})
              .then((value) => print("User Updated"))
              .catchError((error) => print("Failed to update user: $error"));

          if (widget.setGoal) {
            FFAppState().update(() {
              FFAppState().isGoalSwitchedOn = false;
              FFAppState().setGoal = '';
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      controller: _controller,
      activeColor: Color(0xFF26BAE5),
      inactiveColor: Color(0xFF314A68),
      borderRadius: BorderRadius.all(const Radius.circular(5)),
      width: 48.0,
      height: 26.0,
      enabled: true,
      thumb: ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, value, __) {
          return Icon(
            value ? Icons.square_rounded : Icons.square_rounded,
            color: value ? Colors.white : Color(0xFF26BAE5),
            size: 22.0,
          );
        },
      ),
    );
  }
}
