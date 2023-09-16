import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exercise_choice_model.dart';
export 'exercise_choice_model.dart';

class ExerciseChoiceWidget extends StatefulWidget {
  const ExerciseChoiceWidget({Key? key}) : super(key: key);

  @override
  _ExerciseChoiceWidgetState createState() => _ExerciseChoiceWidgetState();
}

class _ExerciseChoiceWidgetState extends State<ExerciseChoiceWidget> {
  late ExerciseChoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseChoiceModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: FFAppState().velocityOrJump == 'Velocity' ? 300.0 : 200.0,
      decoration: BoxDecoration(
        color: Color(0xFF182433),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 42.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                child: Container(
                  width: 50.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg6,
                  ),
                ),
              ),
              if (FFAppState().velocityOrJump == 'Velocity')
                StreamBuilder<List<ExerciseRecord>>(
                  stream: queryExerciseRecord(
                    queryBuilder: (exerciseRecord) => exerciseRecord
                        .where('exercise_owner',
                            isEqualTo: currentUserReference)
                        .where('exercise_type',
                            isEqualTo:
                                FFAppState().velocityOrJump.toLowerCase()),
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
                    List<ExerciseRecord> columnExerciseRecordList =
                        snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnExerciseRecordList.length,
                          (columnIndex) {
                        final columnExerciseRecord =
                            columnExerciseRecordList[columnIndex];
                        return FFButtonWidget(
                          onPressed: () async {
                            await currentUserReference!
                                .update(createUserRecordData(
                              userViewdataExercise:
                                  columnExerciseRecord.reference,
                            ));
                            Navigator.pop(context);
                          },
                          text: columnExerciseRecord.name,
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).bgBg4,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  useGoogleFonts: false,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      }),
                    );
                  },
                ),
              if (FFAppState().velocityOrJump != 'Velocity')
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: StreamBuilder<List<ExerciseRecord>>(
                    stream: queryExerciseRecord(
                      queryBuilder: (exerciseRecord) => exerciseRecord
                          .where('exercise_owner',
                              isEqualTo: currentUserReference)
                          .where('exercise_type', isNotEqualTo: 'velocity'),
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
                      List<ExerciseRecord> columnExerciseRecordList =
                          snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(columnExerciseRecordList.length,
                            (columnIndex) {
                          final columnExerciseRecord =
                              columnExerciseRecordList[columnIndex];
                          return FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: columnExerciseRecord.name,
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).bgBg4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
