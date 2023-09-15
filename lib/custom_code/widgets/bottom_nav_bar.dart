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

import 'package:ovr_performance/profile/profile_page/profile_page_widget.dart';

import 'package:ovr_performance/jump/view_data_copy2/view_data_copy2_widget.dart';

import 'package:ovr_performance/velocity/view_data/view_data/view_data_widget.dart';

import 'package:ovr_performance/jump/jump_mode_selection/jump_mode_selection_widget.dart';
import 'package:ovr_performance/velocity/main_page/lift_selection/lift_selection_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    this.width,
    this.height,
    required this.type,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String type;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      ViewDataWidget(),
      // widget.type == 'Velocity' ? ViewDataWidget() : ViewDataCopy2Widget(),
      widget.type == 'Velocity'
          ? LiftSelectionWidget()
          : JumpModeSelectionWidget(),
      ProfilePageWidget(),
    ];

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _widgetOptions[FFAppState().pageIndex]);
  }
}
