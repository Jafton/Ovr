import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/delete_exercise/delete_exercise_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'jump_exercise_model.dart';
export 'jump_exercise_model.dart';

class JumpExerciseWidget extends StatefulWidget {
  const JumpExerciseWidget({
    Key? key,
    this.documentRef,
  }) : super(key: key);

  final DocumentReference? documentRef;

  @override
  _JumpExerciseWidgetState createState() => _JumpExerciseWidgetState();
}

class _JumpExerciseWidgetState extends State<JumpExerciseWidget> {
  late JumpExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JumpExerciseModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: StreamBuilder<ExerciseRecord>(
        stream: ExerciseRecord.getDocument(widget.documentRef!),
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
          final containerExerciseRecord = snapshot.data!;
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (containerExerciseRecord.exerciseType == 'Vertical Jump')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 12.0, 3.0),
                      child: Icon(
                        FFIcons.kjump,
                        color: FlutterFlowTheme.of(context).btnDefault,
                        size: 24.0,
                      ),
                    ),
                  if (containerExerciseRecord.exerciseType == 'RSI Mode')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 12.0, 3.0),
                      child: Icon(
                        FFIcons.krsi,
                        color: FlutterFlowTheme.of(context).btnDefault,
                        size: 24.0,
                      ),
                    ),
                  if (containerExerciseRecord.exerciseType == 'GCT Mode')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 12.0, 3.0),
                      child: Icon(
                        FFIcons.kgct,
                        color: FlutterFlowTheme.of(context).btnDefault,
                        size: 24.0,
                      ),
                    ),
                  Expanded(
                    child: Text(
                      containerExerciseRecord.name,
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  if (FFAppState().isExerciseEditing &&
                      containerExerciseRecord.exerciseIsDeletable)
                    Builder(
                      builder: (context) => FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: 8.0,
                        borderWidth: 1.0,
                        buttonSize: 30.0,
                        fillColor: FlutterFlowTheme.of(context).bgBg,
                        icon: Icon(
                          FFIcons.kdelete,
                          color: FlutterFlowTheme.of(context).txtText5,
                          size: 14.0,
                        ),
                        onPressed: () async {
                          await showAlignedDialog(
                            context: context,
                            isGlobal: true,
                            avoidOverflow: false,
                            targetAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: DeleteExerciseWidget(
                                  exerciseRef: widget.documentRef,
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
