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

class IconManagers extends StatefulWidget {
  const IconManagers({
    Key? key,
    this.width,
    this.height,
    required this.nameOfIcon,
    required this.size,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String nameOfIcon;
  final double size;

  @override
  _IconManagersState createState() => _IconManagersState();
}

class _IconManagersState extends State<IconManagers> {
  IconData iconWidget = FFIcons.kbenchpress;
  Map icon = {
    "Back Squat": FFIcons.kbacksquat,
    "Bench Press": FFIcons.kbenchpress,
    "Deadlift": FFIcons.kdeadlift,
    "Shoulder Press": FFIcons.kshoulderpress,
    "Power Clean": FFIcons.kpowerclean,
    "Front Squat": FFIcons.kfrontsquat,
    "Reverse Lunge": FFIcons.kreverselunge,
    "TB Deadlift": FFIcons.ktbdeadlift
  };

  Map iconMap = {
    'FFIcons.kbacksquat': FFIcons.kbacksquat,
    'FFIcons.kbenchpress': FFIcons.kbenchpress,
    "FFIcons.kdeadlift": FFIcons.kdeadlift,
    "FFIcons.kshoulderpress": FFIcons.kshoulderpress,
    "FFIcons.kpowerclean": FFIcons.kpowerclean,
    "FFIcons.kfrontsquat": FFIcons.kfrontsquat,
    "FFIcons.kreverselunge": FFIcons.kreverselunge,
    "FFIcons.ktbdeadlift": FFIcons.ktbdeadlift
    // Add other icon names and IconData mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconMap[widget.nameOfIcon],
      // json1['icon'],
      // iconWidget,
      color: FlutterFlowTheme.of(context).btnDefault,
      size: widget.size,
    );
  }
}
