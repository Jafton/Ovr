import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/jump/jump_lift_selection/jump_lift_selection_widget.dart';
import '/velocity/velocity_or_jump/velocity_or_jump_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JumpModeSelectionModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool isEditiingName = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
