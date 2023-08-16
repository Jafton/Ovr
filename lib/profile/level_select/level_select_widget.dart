import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'level_select_model.dart';
export 'level_select_model.dart';

class LevelSelectWidget extends StatefulWidget {
  const LevelSelectWidget({Key? key}) : super(key: key);

  @override
  _LevelSelectWidgetState createState() => _LevelSelectWidgetState();
}

class _LevelSelectWidgetState extends State<LevelSelectWidget> {
  late LevelSelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LevelSelectModel());
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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await currentUserReference!.update(createUserRecordData(
                    userLifterExperience: 'Novice',
                  ));
                  Navigator.pop(context);
                },
                text: 'Novice',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 44.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).bgStroke,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await currentUserReference!.update(createUserRecordData(
                    userLifterExperience: 'Intermediate',
                  ));
                  Navigator.pop(context);
                },
                text: 'Intermediate',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 44.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).bgStroke,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await currentUserReference!.update(createUserRecordData(
                    userLifterExperience: 'Advanced',
                  ));
                  Navigator.pop(context);
                },
                text: 'Advanced',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 44.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).bgStroke,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
