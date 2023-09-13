import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'end_set_model.dart';
export 'end_set_model.dart';

class EndSetWidget extends StatefulWidget {
  const EndSetWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
  }) : super(key: key);

  final DocumentReference? parameter1;
  final String? parameter2;

  @override
  _EndSetWidgetState createState() => _EndSetWidgetState();
}

class _EndSetWidgetState extends State<EndSetWidget> {
  late EndSetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EndSetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<DateOfExerciseRecord>>(
      stream: queryDateOfExerciseRecord(
        parent: widget.parameter1,
        queryBuilder: (dateOfExerciseRecord) =>
            dateOfExerciseRecord.orderBy('creation_date'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<DateOfExerciseRecord> containerDateOfExerciseRecordList =
            snapshot.data!;
        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 0.15,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).bgBg,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('VideoRecording');

                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: false,
                          allowVideo: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                              selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }
                      },
                      text: '',
                      icon: Icon(
                        FFIcons.kvideo,
                        color: FlutterFlowTheme.of(context).redNo,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 72.0,
                        height: 55.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).bgBg5,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'SF Pro Display',
                                  color: Colors.white,
                                  useGoogleFonts: false,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                    child: StreamBuilder<List<SetRecord>>(
                      stream: querySetRecord(
                        parent: widget.parameter1,
                        queryBuilder: (setRecord) =>
                            setRecord.orderBy('set_creation_date'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<SetRecord> buttonSetRecordList = snapshot.data!;
                        return FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().isOfflineMode) {
                              context.pushNamed('LiftSelectionCopy');
                            } else {
                              if (functions.dateCheckInfo(
                                  containerDateOfExerciseRecordList
                                      .map((e) => e.creationDate)
                                      .withoutNulls
                                      .toList())) {
                                setState(() {});
                              } else {
                                await DateOfExerciseRecord.createDoc(
                                        widget.parameter1!)
                                    .set(createDateOfExerciseRecordData(
                                  creationDate: getCurrentTimestamp,
                                  dateString:
                                      functions.ymdFormat(getCurrentTimestamp),
                                ));
                              }

                              setState(() {
                                FFAppState().pageIndex = 0;
                              });

                              context.goNamed('MainPage');

                              await SetRecord.createDoc(widget.parameter1!)
                                  .set({
                                ...createSetRecordData(
                                  setCreationDate: getCurrentTimestamp,
                                  setExerciseRef: widget.parameter1,
                                  setWeight: valueOrDefault(
                                              currentUserDocument?.userUnits,
                                              '') ==
                                          'lb'
                                      ? FFAppState().weightSelection
                                      : ((double.parse(FFAppState()
                                                  .weightSelection) *
                                              2.205)
                                          .round()
                                          .toString()),
                                  setGoal: FFAppState().setGoal,
                                  dateString:
                                      functions.ymdFormat(getCurrentTimestamp),
                                  setWeightKg: valueOrDefault(
                                              currentUserDocument?.userUnits,
                                              '') ==
                                          'kg'
                                      ? FFAppState().weightSelection
                                      : ((double.parse(FFAppState()
                                                  .weightSelection) /
                                              2.205)
                                          .round()
                                          .toString()),
                                ),
                                'set_list_of_rep': getRepListFirestoreData(
                                  FFAppState().listOfReps,
                                ),
                              });
                              setState(() {
                                FFAppState().isGoalSwitchedOn = false;
                                FFAppState().setGoal = '';
                                FFAppState().weightSelection = '';
                                FFAppState().listOfReps = [];
                              });
                            }
                          },
                          text: 'END SET',
                          options: FFButtonOptions(
                            height: 55.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).bgBg5,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Bicyclette',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  useGoogleFonts: false,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await SetRecord.createDoc(widget.parameter1!).set({
                          ...createSetRecordData(
                            setCreationDate: getCurrentTimestamp,
                            setExerciseRef: widget.parameter1,
                            setWeight: FFAppState().weightSelection,
                            setGoal: FFAppState().setGoal,
                          ),
                          'set_list_of_rep': getRepListFirestoreData(
                            FFAppState().listOfReps,
                          ),
                        });
                        setState(() {
                          FFAppState().pageIndex = 0;
                          FFAppState().isGoalSwitchedOn = false;
                          FFAppState().setGoal = '';
                          FFAppState().weightSelection = '';
                          FFAppState().listOfReps = [];
                        });

                        context.goNamed(
                          'WeightInput',
                          queryParameters: {
                            'exerciseName': serializeParam(
                              widget.parameter2,
                              ParamType.String,
                            ),
                            'exerciseRef': serializeParam(
                              widget.parameter1,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'NEW SET',
                      options: FFButtonOptions(
                        height: 55.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).btnDefault,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Bicyclette',
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: false,
                            ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
