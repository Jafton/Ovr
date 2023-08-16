import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/personal_info/country_row/country_row_widget.dart';
import '/personal_info/state_selector/state_selector_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountrySelectorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for UsernameField widget.
  TextEditingController? usernameFieldController;
  String? Function(BuildContext, String?)? usernameFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    usernameFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
