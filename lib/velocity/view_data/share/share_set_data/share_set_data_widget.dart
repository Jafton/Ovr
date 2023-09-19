import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'share_set_data_model.dart';
export 'share_set_data_model.dart';

class ShareSetDataWidget extends StatefulWidget {
  const ShareSetDataWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
  }) : super(key: key);

  final String? parameter1;
  final String? parameter2;
  final List<String>? parameter3;
  final List<String>? parameter4;
  final List<String>? parameter5;

  @override
  _ShareSetDataWidgetState createState() => _ShareSetDataWidgetState();
}

class _ShareSetDataWidgetState extends State<ShareSetDataWidget> {
  late ShareSetDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShareSetDataModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).bgStroke,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: valueOrDefault(
                                      currentUserDocument?.userUnits, '') ==
                                  'lb'
                              ? widget.parameter1!
                              : widget.parameter2!,
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        ),
                        TextSpan(
                          text: valueOrDefault(
                              currentUserDocument?.userUnits, ''),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText2,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                    child: Icon(
                      FFIcons.karrow,
                      color: FlutterFlowTheme.of(context).btnDefault,
                      size: 14.0,
                    ),
                  ),
                  RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: functions
                              .maxValueInList(widget.parameter3!.toList()),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        TextSpan(
                          text: ' m/s',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: false,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                    child: Icon(
                      FFIcons.kmaxM,
                      color: FlutterFlowTheme.of(context).btnDefault,
                      size: 16.0,
                    ),
                  ),
                  RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: functions
                              .maxValueInList(widget.parameter4!.toList()),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                        TextSpan(
                          text: ' m/s',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                useGoogleFonts: false,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                    child: Icon(
                      FFIcons.kmaxP,
                      color: FlutterFlowTheme.of(context).btnDefault,
                      size: 16.0,
                    ),
                  ),
                  RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: functions
                              .maxValueInList(widget.parameter5!.toList()),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                        TextSpan(
                          text: ' w',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                useGoogleFonts: false,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
