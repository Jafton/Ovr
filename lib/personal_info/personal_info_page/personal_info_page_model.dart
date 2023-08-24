import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/personal_info/country_selector/country_selector_widget.dart';
import '/personal_info/date_time_picker/date_time_picker_widget.dart';
import '/personal_info/sport_and_position_component/sport_and_position_component_widget.dart';
import '/profile/level_select/level_select_widget.dart';
import '/profile/mass_unit_selector/mass_unit_selector_widget.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInfoPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for UsernameField widget.
  TextEditingController? usernameFieldController;
  String? Function(BuildContext, String?)? usernameFieldControllerValidator;
  // State field(s) for weight widget.
  TextEditingController? weightController;
  String? Function(BuildContext, String?)? weightControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    usernameFieldController?.dispose();
    weightController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
