import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/return_to_homepage/return_to_homepage_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'rep_data_model.dart';
export 'rep_data_model.dart';

class RepDataWidget extends StatefulWidget {
  const RepDataWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final String? parameter1;

  @override
  _RepDataWidgetState createState() => _RepDataWidgetState();
}

class _RepDataWidgetState extends State<RepDataWidget> {
  late RepDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RepDataModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 18.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFF182433),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).bgBg2,
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).bgBg2,
                    icon: Icon(
                      FFIcons.kclose,
                      color: FlutterFlowTheme.of(context).txtText3,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: ReturnToHomepageWidget(),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                  ),
                  Text(
                    widget.parameter1!,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Bicyclette',
                          fontSize: MediaQuery.sizeOf(context).width < 430.0
                              ? 24.0
                              : 36.0,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (valueOrDefault<bool>(
                      currentUserDocument?.userShowFatigue, false))
                    AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: MediaQuery.sizeOf(context).width * 0.13,
                        height: 0.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgStroke,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ),
                  Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      CircularPercentIndicator(
                        percent: double.parse(
                                FFAppState().listOfReps.last.repVelocity) /
                            10,
                        radius: MediaQuery.sizeOf(context).width * 0.21,
                        lineWidth: 20.0,
                        animation: true,
                        progressColor: FlutterFlowTheme.of(context).btnDefault,
                        backgroundColor: FlutterFlowTheme.of(context).bgStroke,
                        startAngle: 180.0,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.38,
                        height: MediaQuery.sizeOf(context).width * 0.38,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FFAppState().isGoalSwitchedOn &&
                                    (functions.stringToDouble(
                                            FFAppState().setGoal) <=
                                        functions.stringToDouble(FFAppState()
                                            .listOfReps
                                            .last
                                            .repVelocity))
                                ? Color(0xFF4DAE6E)
                                : Color(0x00000000),
                            width: 5.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFAppState().listOfReps.last.repVelocity,
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    fontFamily: 'Bicyclette',
                                    useGoogleFonts: false,
                                    lineHeight: 1.0,
                                  ),
                            ),
                            Text(
                              'm/s',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                    lineHeight: 1.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (valueOrDefault<bool>(
                      currentUserDocument?.userShowFatigue, false))
                    AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: MediaQuery.sizeOf(context).width * 0.16,
                        height: MediaQuery.sizeOf(context).width < 430.0
                            ? 50.0
                            : 58.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgStroke,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 6.0, 10.0, 6.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFAppState()
                                          .listOfReps
                                          .last
                                          .repFatigue,
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                    ),
                                    TextSpan(
                                      text: '%',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                    ),
                                    TextSpan(
                                      text: '\nfatigue',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            useGoogleFonts: false,
                                          ),
                                    )
                                  ],
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              if (FFAppState().isGoalSwitchedOn)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bgStroke,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              FFIcons.kbest,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Goal',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFAppState().setGoal,
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                                TextSpan(
                                  text: ' m/s',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        useGoogleFonts: false,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (!FFAppState().isGoalSwitchedOn)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bgStroke,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Icon(
                              FFIcons.kbest,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Best',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFAppState().weightSelection,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault(
                                      currentUserDocument?.userUnits, ''),
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 0.0, 2.0, 0.0),
                            child: Icon(
                              FFIcons.karrow,
                              color: FlutterFlowTheme.of(context).btnDefault,
                              size: 14.0,
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFAppState()
                                      .listOfReps
                                      .last
                                      .repMaxVelocity,
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                                TextSpan(
                                  text: ' m/s',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        useGoogleFonts: false,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgStroke,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FFIcons.kmaxM,
                                color: FlutterFlowTheme.of(context).btnDefault,
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: functions.maxValueInList(
                                            FFAppState().listOfReps.toList()),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      TextSpan(
                                        text: ' m/s',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              useGoogleFonts: false,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgStroke,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FFIcons.kinch,
                                color: FlutterFlowTheme.of(context).btnDefault,
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: FFAppState()
                                            .listOfReps
                                            .last
                                            .repRangeOfMotion,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      TextSpan(
                                        text: ' in',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              useGoogleFonts: false,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.22,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgStroke,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FFIcons.kmaxP,
                                color: FlutterFlowTheme.of(context).btnDefault,
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: FFAppState()
                                            .listOfReps
                                            .last
                                            .repPower,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      TextSpan(
                                        text: ' w',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              useGoogleFonts: false,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
