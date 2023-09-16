import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/end_set/end_set_widget.dart';
import '/velocity/rep_data/rep_data_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LiveDataModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for repData component.
  late RepDataModel repDataModel;
  // Model for endSet component.
  late EndSetModel endSetModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    repDataModel = createModel(context, () => RepDataModel());
    endSetModel = createModel(context, () => EndSetModel());
  }

  void dispose() {
    unfocusNode.dispose();
    repDataModel.dispose();
    endSetModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
