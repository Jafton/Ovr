import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/date_of_set/date_of_set_widget.dart';
import '/velocity/velocity_or_jump/velocity_or_jump_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewDataCopy2Model extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool isEditiingName = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for dateOfSet component.
  late DateOfSetModel dateOfSetModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dateOfSetModel = createModel(context, () => DateOfSetModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    dateOfSetModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
