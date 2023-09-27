import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_exercise_model.dart';
export 'delete_exercise_model.dart';

class DeleteExerciseWidget extends StatefulWidget {
  const DeleteExerciseWidget({
    Key? key,
    this.exerciseRef,
  }) : super(key: key);

  final DocumentReference? exerciseRef;

  @override
  _DeleteExerciseWidgetState createState() => _DeleteExerciseWidgetState();
}

class _DeleteExerciseWidgetState extends State<DeleteExerciseWidget> {
  late DeleteExerciseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteExerciseModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Container(
        width: 290.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).bgBg5,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'You are deleting the exercise',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'SF Pro Display',
                          color: FlutterFlowTheme.of(context).txtText1,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 16.0),
                    child: Text(
                      'This action cannot be undone\nDo you want to continue?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText2,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);

                    await currentUserReference!.update({
                      'user_viewData_exercise':
                          FieldValue.arrayRemove([widget.exerciseRef]),
                    });
                    await widget.exerciseRef!.delete();
                    FFAppState().update(() {});
                  },
                  text: 'Yes',
                  options: FFButtonOptions(
                    width: 130.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).bgBg5,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).redNo,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                Container(
                  width: 1.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'No',
                  options: FFButtonOptions(
                    width: 130.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).bgBg5,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
