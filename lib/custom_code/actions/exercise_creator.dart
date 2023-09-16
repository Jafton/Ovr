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

Future exerciseCreator(DocumentReference owner, String userid) async {
  // Add your function code here!

  Map<String, String> exercisesVelocity = {
    "Deadlift": "FFIcons.kbacksquat",
    "Bench Press": "FFIcons.kbenchpress",
    "Power Clean": "FFIcons.kpowerclean",
    "TB Deadlift": "FFIcons.ktbdeadlift",
    "Front Squat": "FFIcons.kfrontsquat",
    "Back Squat": "FFIcons.kbacksquat",
    "Shoulder Press": "FFIcons.kshoulderpress",
    "Reverse Lunge": "FFIcons.kreverselunge"
  };

  Map<String, String> hiddenExercisesVelocity = {
    "Safety Squat": "FFIcons.kbacksquat",
    "Sumo Deadlift": "FFIcons.ktbdeadlift",
    "Box Squat": "FFIcons.kbacksquat",
    "Incline Bench Press": "FFIcons.kbenchpress",
    "Trap Bar Jumps": "FFIcons.kreverselunge"
  };

  Map<String, String> jumpExercises = {
    "Regular Vertical Jump": "Vertical Jump",
    "Regular RSI Mode": "RSI Mode",
    "Regular GCT Mode": "GCT Mode",
  };

  for (var entry in jumpExercises.entries) {
    await FirebaseFirestore.instance.collection('exercise').add({
      'name': entry.key,
      'exercise_owner': owner,
      'userid': userid,
      'exercise_type': entry.value,
      'exercise_is_deleteble': false,
    });
  }

  for (var entry in exercisesVelocity.entries) {
    await FirebaseFirestore.instance.collection('exercise').add({
      'name': entry.key,
      'exercise_owner': owner,
      'exercise_icon': entry.value,
      'userid': userid,
      'exercise_type': 'velocity',
      'exercise_is_visible': true,
      'exercise_is_deleteble': false
    });
  }

  for (var entry in hiddenExercisesVelocity.entries) {
    await FirebaseFirestore.instance.collection('exercise').add({
      'name': entry.key,
      'exercise_owner': owner,
      'exercise_icon': entry.value,
      'userid': userid,
      'exercise_type': 'velocity',
      'exercise_is_visible': false,
      'exercise_is_deleteble': false
    });
  }
}
