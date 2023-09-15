import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/view_data/share/rep_data_share/rep_data_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetDataShareModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for repDataShare component.
  late RepDataShareModel repDataShareModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    repDataShareModel = createModel(context, () => RepDataShareModel());
  }

  void dispose() {
    unfocusNode.dispose();
    repDataShareModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
