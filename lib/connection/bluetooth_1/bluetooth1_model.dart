import '/connection/single_device/single_device_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Bluetooth1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - searchingDevice] action in Bluetooth-1 widget.
  bool? result;
  // Model for singleDevice component.
  late SingleDeviceModel singleDeviceModel1;
  // Model for singleDevice component.
  late SingleDeviceModel singleDeviceModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    singleDeviceModel1 = createModel(context, () => SingleDeviceModel());
    singleDeviceModel2 = createModel(context, () => SingleDeviceModel());
  }

  void dispose() {
    unfocusNode.dispose();
    singleDeviceModel1.dispose();
    singleDeviceModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
