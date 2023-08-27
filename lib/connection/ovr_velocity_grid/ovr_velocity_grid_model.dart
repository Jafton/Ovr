import '/connection/velocity_device/velocity_device_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OvrVelocityGridModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for velocityDevice component.
  late VelocityDeviceModel velocityDeviceModel;
  // Stores action output result for [Custom Action - connectingDevice] action in velocityDevice widget.
  bool? isConnected;
  // Stores action output result for [Custom Action - searchingDevice] action in Button widget.
  bool? resultCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    velocityDeviceModel = createModel(context, () => VelocityDeviceModel());
  }

  void dispose() {
    velocityDeviceModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
