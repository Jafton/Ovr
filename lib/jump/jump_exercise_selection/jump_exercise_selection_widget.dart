import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sort_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/jump/jump_exercise/jump_exercise_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'jump_exercise_selection_model.dart';
export 'jump_exercise_selection_model.dart';

class JumpExerciseSelectionWidget extends StatefulWidget {
  const JumpExerciseSelectionWidget({
    Key? key,
    this.exerciseType,
  }) : super(key: key);

  final String? exerciseType;

  @override
  _JumpExerciseSelectionWidgetState createState() =>
      _JumpExerciseSelectionWidgetState();
}

class _JumpExerciseSelectionWidgetState
    extends State<JumpExerciseSelectionWidget> {
  late JumpExerciseSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JumpExerciseSelectionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Align(
            alignment: AlignmentDirectional(0.00, 1.00),
            child: StreamBuilder<List<ExerciseRecord>>(
              stream: queryExerciseRecord(
                queryBuilder: (exerciseRecord) => exerciseRecord
                    .where('exercise_owner', isEqualTo: currentUserReference)
                    .where('exercise_type', isEqualTo: widget.exerciseType),
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
                List<ExerciseRecord> containerExerciseRecordList =
                    snapshot.data!;
                return Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.93,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg5,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (!FFAppState().isExerciseEditing)
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).bgBg2,
                                  borderRadius: 10.0,
                                  borderWidth: 1.0,
                                  buttonSize: 44.0,
                                  fillColor: FlutterFlowTheme.of(context).bgBg2,
                                  icon: Icon(
                                    FFIcons.karrowLeft,
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().isExerciseEditing = false;
                                    });
                                    context.safePop();
                                  },
                                ),
                              if (FFAppState().isExerciseEditing)
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).bgBg2,
                                  borderRadius: 10.0,
                                  borderWidth: 1.0,
                                  buttonSize: 44.0,
                                  fillColor: FlutterFlowTheme.of(context).bgBg2,
                                  icon: Icon(
                                    FFIcons.kclose,
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().isExerciseEditing = false;
                                    });
                                  },
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (FFAppState().isExerciseEditing)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .bgStroke,
                                        borderRadius: 10.0,
                                        borderWidth: 1.0,
                                        buttonSize: 44.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .bgStroke,
                                        icon: Icon(
                                          FFIcons.kaddSquare,
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            FFAppState().isExerciseEditing =
                                                false;
                                          });
                                          Navigator.pop(context);

                                          context.pushNamed(
                                            'NewExercisePageJump',
                                            queryParameters: {
                                              'exerciseType': serializeParam(
                                                widget.exerciseType,
                                                ParamType.String,
                                              ),
                                              'exerciseDocuments':
                                                  serializeParam(
                                                containerExerciseRecordList,
                                                ParamType.Document,
                                                true,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'exerciseDocuments':
                                                  containerExerciseRecordList,
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  if (!FFAppState().isExerciseEditing)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .bgStroke,
                                        borderRadius: 10.0,
                                        borderWidth: 1.0,
                                        buttonSize: 44.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .bgStroke,
                                        icon: Icon(
                                          FFIcons.kedit2,
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            FFAppState().isExerciseEditing =
                                                true;
                                          });
                                        },
                                      ),
                                    ),
                                  FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).bgStroke,
                                    borderRadius: 10.0,
                                    borderWidth: 1.0,
                                    buttonSize: 44.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).bgStroke,
                                    icon: Icon(
                                      FFIcons.ksort,
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: SortBottomSheetWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final exercise = functions
                                  .sortFunction(
                                      containerExerciseRecordList.toList(),
                                      FFAppState().sortState)
                                  .toList();
                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(exercise.length,
                                      (exerciseIndex) {
                                    final exerciseItem =
                                        exercise[exerciseIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (!FFAppState().isExerciseEditing) {
                                          if (exerciseItem.exerciseType ==
                                              'RSI Mode') {
                                            context.pushNamed('RSILiveData');
                                          } else {
                                            if (exerciseItem.exerciseType ==
                                                'GCT Mode') {
                                              context.pushNamed('GCTLiveData');
                                            } else {
                                              context.pushNamed(
                                                'VerticalJumpLiveData',
                                                queryParameters: {
                                                  'exerciseRef': serializeParam(
                                                    exerciseItem.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }

                                            setState(() {});
                                          }

                                          await exerciseItem.reference
                                              .update(createExerciseRecordData(
                                            exerciseLastUsed:
                                                getCurrentTimestamp,
                                          ));
                                        }
                                      },
                                      child: JumpExerciseWidget(
                                        key: Key(
                                            'Keyafw_${exerciseIndex}_of_${exercise.length}'),
                                        documentRef: exerciseItem.reference,
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
