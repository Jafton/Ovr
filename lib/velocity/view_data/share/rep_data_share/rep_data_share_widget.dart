import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'rep_data_share_model.dart';
export 'rep_data_share_model.dart';

class RepDataShareWidget extends StatefulWidget {
  const RepDataShareWidget({
    Key? key,
    this.exerciseName,
    this.setDoc,
  }) : super(key: key);

  final String? exerciseName;
  final SetRecord? setDoc;

  @override
  _RepDataShareWidgetState createState() => _RepDataShareWidgetState();
}

class _RepDataShareWidgetState extends State<RepDataShareWidget> {
  late RepDataShareModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RepDataShareModel());
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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.exerciseName!.toUpperCase(),
                textAlign: TextAlign.center,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Lulo',
                      fontSize: MediaQuery.sizeOf(context).width < 430.0
                          ? 20.0
                          : 32.0,
                      fontWeight: FontWeight.w900,
                      useGoogleFonts: false,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      children: [
                        CircularPercentIndicator(
                          percent: double.parse(
                                  FFAppState().listOfReps.last.repVelocity) /
                              2,
                          radius: MediaQuery.sizeOf(context).width * 0.21,
                          lineWidth: 20.0,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).btnDefault,
                          backgroundColor:
                              FlutterFlowTheme.of(context).bgStroke,
                          startAngle: 180.0,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.38,
                          height: MediaQuery.sizeOf(context).width * 0.38,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).bgBg2,
                              width: 5.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  functions.findAvg(
                                      widget.setDoc?.setListOfRep
                                          ?.map((e) => e.repVelocity)
                                          .toList()
                                          ?.toList(),
                                      2),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: 'Lulo',
                                      fontSize: 46.0,
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
                  ],
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
                                        text: valueOrDefault<String>(
                                          functions.findAvg(
                                              widget.setDoc?.setListOfRep
                                                  ?.map((e) => e.repMaxVelocity)
                                                  .toList()
                                                  ?.toList(),
                                              2),
                                          '0',
                                        ),
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
                                        text: valueOrDefault<String>(
                                          functions.findAvg(
                                              widget.setDoc?.setListOfRep
                                                  ?.map(
                                                      (e) => e.repRangeOfMotion)
                                                  .toList()
                                                  ?.toList(),
                                              1),
                                          '0',
                                        ),
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
                                        text: valueOrDefault<String>(
                                          functions.findAvg(
                                              widget.setDoc?.setListOfRep
                                                  ?.map((e) => e.repMaxPower)
                                                  .toList()
                                                  ?.toList(),
                                              0),
                                          '0',
                                        ),
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
