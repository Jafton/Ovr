import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/delete_exercise/delete_exercise_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exercise_copy_model.dart';
export 'exercise_copy_model.dart';

class ExerciseCopyWidget extends StatefulWidget {
  const ExerciseCopyWidget({
    Key? key,
    this.exerciseRef,
  }) : super(key: key);

  final DocumentReference? exerciseRef;

  @override
  _ExerciseCopyWidgetState createState() => _ExerciseCopyWidgetState();
}

class _ExerciseCopyWidgetState extends State<ExerciseCopyWidget> {
  late ExerciseCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ExerciseRecord>(
      stream: ExerciseRecord.getDocument(widget.exerciseRef!),
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
          decoration: BoxDecoration(
            color: FFAppState().isExerciseEditing
                ? FlutterFlowTheme.of(context).bgBg2
                : FlutterFlowTheme.of(context).bgBg5,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (FFAppState().isExerciseEditing)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (!containerExerciseRecord.exerciseIsVisible)
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).bgBg,
                          borderRadius: 8.0,
                          borderWidth: 0.0,
                          buttonSize: 32.0,
                          fillColor: FlutterFlowTheme.of(context).bgBg,
                          icon: Icon(
                            FFIcons.keye,
                            color: FlutterFlowTheme.of(context).txtText5,
                            size: 15.0,
                          ),
                          onPressed: () async {
                            await widget.exerciseRef!
                                .update(createExerciseRecordData(
                              exerciseIsVisible: true,
                            ));
                          },
                        ),
                      if (containerExerciseRecord.exerciseIsVisible)
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).bgBg,
                          borderRadius: 8.0,
                          borderWidth: 0.0,
                          buttonSize: 32.0,
                          fillColor: FlutterFlowTheme.of(context).bgBg,
                          icon: Icon(
                            FFIcons.keyeSlash,
                            color: FlutterFlowTheme.of(context).txtText2,
                            size: 15.0,
                          ),
                          onPressed: () async {
                            await widget.exerciseRef!
                                .update(createExerciseRecordData(
                              exerciseIsVisible: false,
                            ));
                          },
                        ),
                      Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).bgBg,
                          borderRadius: 8.0,
                          borderWidth: 0.0,
                          buttonSize: 32.0,
                          fillColor: FlutterFlowTheme.of(context).bgBg,
                          disabledColor: FlutterFlowTheme.of(context).bgBg,
                          disabledIconColor:
                              FlutterFlowTheme.of(context).txtText5,
                          icon: Icon(
                            FFIcons.kdelete,
                            color: FlutterFlowTheme.of(context).txtText2,
                            size: 15.0,
                          ),
                          onPressed: !containerExerciseRecord
                                  .exerciseIsDeletable
                              ? null
                              : () async {
                                  showAlignedDialog(
                                    context: context,
                                    isGlobal: true,
                                    avoidOverflow: false,
                                    targetAnchor: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    followerAnchor: AlignmentDirectional(
                                            0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    builder: (dialogContext) {
                                      return Material(
                                        color: Colors.transparent,
                                        child: DeleteExerciseWidget(
                                          exerciseRef: widget.exerciseRef,
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
              Container(
                width: 100.0,
                height: 0.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: custom_widgets.IconManagers(
                            width: 50.0,
                            height: 50.0,
                            nameOfIcon: containerExerciseRecord.exerciseIcon,
                            size: 50.0,
                          ),
                        ),
                      ),
                      Text(
                        containerExerciseRecord.name
                            .maybeHandleOverflow(maxChars: 25),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'SF Pro Display',
                              color: containerExerciseRecord.exerciseIsVisible
                                  ? FlutterFlowTheme.of(context).txtText1
                                  : FlutterFlowTheme.of(context).txtText3,
                              fontSize: MediaQuery.sizeOf(context).width < 430.0
                                  ? 14.0
                                  : 16.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        );
      },
    );
  }
}
