import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // Stores action output result for [Custom Action - checkEmailAvailability] action in Button widget.
  bool? result;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    emailFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
