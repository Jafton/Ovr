import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'weight_input_model.dart';
export 'weight_input_model.dart';

class WeightInputWidget extends StatefulWidget {
  const WeightInputWidget({
    Key? key,
    this.exerciseName,
  }) : super(key: key);

  final String? exerciseName;

  @override
  _WeightInputWidgetState createState() => _WeightInputWidgetState();
}

class _WeightInputWidgetState extends State<WeightInputWidget> {
  late WeightInputModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeightInputModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).bgBg2,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 10.0,
                          borderWidth: 1.0,
                          buttonSize: 52.0,
                          fillColor: FlutterFlowTheme.of(context).bgBg4,
                          icon: Icon(
                            FFIcons.karrowLeft,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                            setState(() {
                              FFAppState().setGoal = '';
                            });
                          },
                        ),
                        Text(
                          'SELECT WEIGHT\nAND GOAL',
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Bicyclette',
                                fontSize:
                                    MediaQuery.sizeOf(context).width < 430.0
                                        ? 24.0
                                        : 36.0,
                                fontWeight: FontWeight.w900,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 18.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                          color: Color(0xFF182433),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().isSelected = false;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FFAppState().isSelected
                                          ? Color(0x00000000)
                                          : FlutterFlowTheme.of(context)
                                              .bgStroke,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        18.0, 14.0, 18.0, 14.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Weight',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'SF Pro Display',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .txtText4,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: valueOrDefault<String>(
                                                  FFAppState().weightSelection ==
                                                              null ||
                                                          FFAppState()
                                                                  .weightSelection ==
                                                              ''
                                                      ? '0'
                                                      : FFAppState()
                                                          .weightSelection,
                                                  '0',
                                                ),
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: ' ',
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: valueOrDefault(
                                                    currentUserDocument
                                                        ?.userUnits,
                                                    ''),
                                                style: TextStyle(),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'SF Pro Display',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText1,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().isSelected = true;
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FFAppState().isSelected &&
                                                FFAppState().isGoalSwitchedOn
                                            ? FlutterFlowTheme.of(context)
                                                .bgStroke
                                            : Colors.transparent,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18.0, 14.0, 18.0, 14.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Set Goal',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText4,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: FFAppState()
                                                                      .setGoal ==
                                                                  null ||
                                                              FFAppState()
                                                                      .setGoal ==
                                                                  ''
                                                          ? '0-2.0'
                                                          : FFAppState()
                                                              .setGoal,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            color: FFAppState()
                                                                        .isGoalSwitchedOn &&
                                                                    (FFAppState().setGoal !=
                                                                            null &&
                                                                        FFAppState().setGoal !=
                                                                            '')
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .txtText1
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .txtText2,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: ' ',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text: 'm/s',
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Display',
                                                            color: FFAppState()
                                                                    .isGoalSwitchedOn
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .txtText1
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .txtText2,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 24.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 26.0,
                                            child: custom_widgets.CustomSwitch(
                                              width: 48.0,
                                              height: 26.0,
                                              state: '-',
                                              docReference: '-',
                                              setGoal: true,
                                              boolOfSwitch: false,
                                              jumpSandboxMode: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final numbers =
                                        FFAppState().numbers.toList();
                                    return GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 8.0,
                                        mainAxisSpacing: 8.0,
                                        childAspectRatio: 2.0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: numbers.length,
                                      itemBuilder: (context, numbersIndex) {
                                        final numbersItem =
                                            numbers[numbersIndex];
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            if (FFAppState().isSelected) {
                                              if (FFAppState()
                                                  .isGoalSwitchedOn) {
                                                if (!(FFAppState()
                                                        .setGoal
                                                        .length >=
                                                    4)) {
                                                  setState(() {
                                                    FFAppState().setGoal =
                                                        FFAppState().setGoal +
                                                            numbersItem
                                                                .toString();
                                                  });
                                                }
                                              }
                                            } else {
                                              if (!(FFAppState()
                                                      .weightSelection
                                                      .length >=
                                                  3)) {
                                                setState(() {
                                                  FFAppState().weightSelection =
                                                      FFAppState()
                                                              .weightSelection +
                                                          numbersItem
                                                              .toString();
                                                });
                                              }
                                            }
                                          },
                                          text: numbersItem.toString(),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .bgStroke,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'SF Pro Display',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText1,
                                                  useGoogleFonts: false,
                                                ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .btnDefault,
                                            hoverTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .txtText1,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 8.0,
                                    mainAxisSpacing: 8.0,
                                    childAspectRatio: 2.0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: !FFAppState().isSelected
                                          ? null
                                          : () async {
                                              if (FFAppState().isSelected) {
                                                if (FFAppState()
                                                    .isGoalSwitchedOn) {
                                                  if (!functions.containsDot(
                                                      FFAppState().setGoal,
                                                      '.')) {
                                                    setState(() {
                                                      FFAppState().setGoal =
                                                          FFAppState().setGoal +
                                                              '.';
                                                    });
                                                  }
                                                }
                                              }
                                            },
                                      text: '.',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color:
                                            FlutterFlowTheme.of(context).bgBg2,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText3,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .txtText1,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isSelected) {
                                          if (FFAppState().isGoalSwitchedOn) {
                                            setState(() {
                                              FFAppState().setGoal =
                                                  FFAppState().setGoal + '0';
                                            });
                                          }
                                        } else {
                                          setState(() {
                                            FFAppState().weightSelection =
                                                FFAppState().weightSelection +
                                                    '0';
                                          });
                                        }
                                      },
                                      text: '0',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .bgStroke,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText1,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .btnDefault,
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        if (FFAppState().isSelected) {
                                          if (FFAppState().isGoalSwitchedOn) {
                                            setState(() {
                                              FFAppState().setGoal =
                                                  FFAppState()
                                                      .setGoal
                                                      .substring(
                                                          0,
                                                          FFAppState()
                                                                  .setGoal
                                                                  .length -
                                                              1);
                                            });
                                          }
                                        } else {
                                          setState(() {
                                            FFAppState().weightSelection =
                                                FFAppState()
                                                    .weightSelection
                                                    .substring(
                                                        0,
                                                        FFAppState()
                                                                .weightSelection
                                                                .length -
                                                            1);
                                          });
                                        }
                                      },
                                      text: '',
                                      icon: Icon(
                                        FFIcons.ktagCross,
                                        color: FlutterFlowTheme.of(context)
                                            .txtText3,
                                        size: 32.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color:
                                            FlutterFlowTheme.of(context).bgBg2,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText1,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .txtText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: FFButtonWidget(
                                  onPressed: (FFAppState().weightSelection ==
                                                  null ||
                                              FFAppState().weightSelection ==
                                                  '') ||
                                          ((FFAppState().isGoalSwitchedOn ==
                                                  true) &&
                                              (FFAppState().setGoal == null ||
                                                  FFAppState().setGoal == ''))
                                      ? null
                                      : () async {
                                          context.goNamed(
                                            'LiveData',
                                            queryParameters: {
                                              'exerciseName': serializeParam(
                                                widget.exerciseName,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );

                                          setState(() {
                                            FFAppState().isSelected = false;
                                            FFAppState().weightSelection = '';
                                          });
                                          if (double.parse(
                                                  FFAppState().setGoal) >
                                              2) {
                                            setState(() {
                                              FFAppState().setGoal = '2';
                                            });
                                          }
                                        },
                                  text: 'ENTER',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 55.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).btnDefault,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Bicyclette',
                                          color: FlutterFlowTheme.of(context)
                                              .txtText1,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledColor:
                                        FlutterFlowTheme.of(context).bgStroke,
                                    disabledTextColor:
                                        FlutterFlowTheme.of(context).txtText2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 100.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
