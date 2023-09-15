import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/live_data/data_in_video_recording/data_in_video_recording_widget.dart';
import '/velocity/live_data/return_to_homepage/return_to_homepage_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoRecordingModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<RepStruct> listOfReps = [];
  void addToListOfReps(RepStruct item) => listOfReps.add(item);
  void removeFromListOfReps(RepStruct item) => listOfReps.remove(item);
  void removeAtIndexFromListOfReps(int index) => listOfReps.removeAt(index);
  void updateListOfRepsAtIndex(int index, Function(RepStruct) updateFn) =>
      listOfReps[index] = updateFn(listOfReps[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for dataInVideoRecording component.
  late DataInVideoRecordingModel dataInVideoRecordingModel1;
  // Model for dataInVideoRecording component.
  late DataInVideoRecordingModel dataInVideoRecordingModel2;
  // Model for dataInVideoRecording component.
  late DataInVideoRecordingModel dataInVideoRecordingModel3;
  // Model for dataInVideoRecording component.
  late DataInVideoRecordingModel dataInVideoRecordingModel4;
  // Model for dataInVideoRecording component.
  late DataInVideoRecordingModel dataInVideoRecordingModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataInVideoRecordingModel1 =
        createModel(context, () => DataInVideoRecordingModel());
    dataInVideoRecordingModel2 =
        createModel(context, () => DataInVideoRecordingModel());
    dataInVideoRecordingModel3 =
        createModel(context, () => DataInVideoRecordingModel());
    dataInVideoRecordingModel4 =
        createModel(context, () => DataInVideoRecordingModel());
    dataInVideoRecordingModel5 =
        createModel(context, () => DataInVideoRecordingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dataInVideoRecordingModel1.dispose();
    dataInVideoRecordingModel2.dispose();
    dataInVideoRecordingModel3.dispose();
    dataInVideoRecordingModel4.dispose();
    dataInVideoRecordingModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
