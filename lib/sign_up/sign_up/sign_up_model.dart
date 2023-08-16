import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for PasswordField widget.
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  // State field(s) for Confirm widget.
  TextEditingController? confirmController;
  late bool confirmVisibility;
  String? Function(BuildContext, String?)? confirmControllerValidator;
  // Stores action output result for [Custom Action - checkUsernameAvailability] action in Button widget.
  bool? username;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    confirmVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    usernameController?.dispose();
    emailFieldController?.dispose();
    passwordFieldController?.dispose();
    confirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
