import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/num_pad/num_pad_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WeightInputModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for numPad component.
  late NumPadModel numPadModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    numPadModel = createModel(context, () => NumPadModel());
  }

  void dispose() {
    unfocusNode.dispose();
    numPadModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
