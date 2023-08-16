import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'checking_model.dart';
export 'checking_model.dart';

class CheckingWidget extends StatefulWidget {
  const CheckingWidget({Key? key}) : super(key: key);

  @override
  _CheckingWidgetState createState() => _CheckingWidgetState();
}

class _CheckingWidgetState extends State<CheckingWidget> {
  late CheckingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckingModel());
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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Text(
                'Checking For Updates',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).txtText2,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).bgStroke,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Text(
                'Update found!',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).txtText2,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'BEGIN UPDATE',
              options: FFButtonOptions(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).btnDefault,
                textStyle: FlutterFlowTheme.of(context).titleMedium,
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Text(
                'Updating...',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).txtText2,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: LinearPercentIndicator(
                percent: 0.5,
                lineHeight: 15.0,
                animation: true,
                progressColor: FlutterFlowTheme.of(context).btnDefault,
                backgroundColor: FlutterFlowTheme.of(context).bgBg4,
                barRadius: Radius.circular(30.0),
                padding: EdgeInsets.zero,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Text(
                'Update completed!',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).greenYes,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).bgStroke,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(
                FFIcons.kdone,
                color: FlutterFlowTheme.of(context).greenYes,
                size: 32.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Text(
                'Update failed.',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).redNo,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).bgStroke,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(
                FFIcons.kabout,
                color: FlutterFlowTheme.of(context).redNo,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
