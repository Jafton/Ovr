import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/live_data/return_to_homepage/return_to_homepage_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vertical_jump_live_data_model.dart';
export 'vertical_jump_live_data_model.dart';

class VerticalJumpLiveDataWidget extends StatefulWidget {
  const VerticalJumpLiveDataWidget({
    Key? key,
    this.exerciseRef,
  }) : super(key: key);

  final DocumentReference? exerciseRef;

  @override
  _VerticalJumpLiveDataWidgetState createState() =>
      _VerticalJumpLiveDataWidgetState();
}

class _VerticalJumpLiveDataWidgetState
    extends State<VerticalJumpLiveDataWidget> {
  late VerticalJumpLiveDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerticalJumpLiveDataModel());
  }

  @override
  void dispose() {
    _model.dispose();

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
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).bgBg2,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final verticalJumpLiveDataExerciseRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).bgBg2,
              body: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 18.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                decoration: BoxDecoration(
                                  color: Color(0xFF182433),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .bgBg2,
                                            borderRadius: 10.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .bgBg2,
                                            icon: Icon(
                                              FFIcons.kclose,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText3,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => FocusScope.of(
                                                            context)
                                                        .requestFocus(
                                                            _model.unfocusNode),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ReturnToHomepageWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                verticalJumpLiveDataExerciseRecord
                                                    .name
                                                    .toUpperCase(),
                                                textAlign: TextAlign.end,
                                                maxLines: 2,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Lulo',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 24.0
                                                              : 36.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Frame_108.png',
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFAppState()
                                                    .listOfRepsVertJump
                                                    .last,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displayLarge
                                                        .override(
                                                          fontFamily: 'Lulo',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 64.0
                                                              : 96.0,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.0,
                                                        ),
                                              ),
                                              Text(
                                                'in',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 24.0
                                                              : 36.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Frame_109.png',
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 6.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .bgStroke,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Icon(
                                                        FFIcons.kbest,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        'Best',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .txtText2,
                                                                  fontSize:
                                                                      MediaQuery.sizeOf(context).width <
                                                                              430.0
                                                                          ? 14.0
                                                                          : 16.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '221',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final jump = functions
                                                  .max5elements(FFAppState()
                                                      .listOfRepsVertJump
                                                      .toList())
                                                  .toList();
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: List.generate(
                                                    jump.length, (jumpIndex) {
                                                  final jumpItem =
                                                      jump[jumpIndex];
                                                  return Flexible(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bgStroke,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      10.0,
                                                                      6.0,
                                                                      10.0),
                                                          child: Text(
                                                            jumpItem,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: jumpItem ==
                                                                          FFAppState()
                                                                              .listOfRepsVertJump
                                                                              .last
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .txtText1
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .txtText2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(SizedBox(width: 6.0)),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 18.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF182433),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    FFAppState().addToListOfRepsVertJump(
                                        functions
                                            .getRandomDouble(1.0, 50.0)
                                            .toStringAsFixed(1));
                                  });
                                },
                                text: 'ADD REP',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height: 56.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).btnDefault,
                                  textStyle:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'DELETE REP',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: 56.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).btnDefault,
                                textStyle:
                                    FlutterFlowTheme.of(context).titleMedium,
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StreamBuilder<List<DateOfExerciseRecord>>(
                    stream: queryDateOfExerciseRecord(
                      parent: verticalJumpLiveDataExerciseRecord.reference,
                      queryBuilder: (dateOfExerciseRecord) =>
                          dateOfExerciseRecord.orderBy('creation_date'),
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
                      List<DateOfExerciseRecord>
                          containerDateOfExerciseRecordList = snapshot.data!;
                      return Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgBg,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 6.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '',
                                    icon: Icon(
                                      FFIcons.kvideo,
                                      color: FlutterFlowTheme.of(context).redNo,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 72.0,
                                      height: 55.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).bgBg5,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'SF Pro Display',
                                            color: Colors.white,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 3.0, 0.0),
                                  child: StreamBuilder<List<SetRecord>>(
                                    stream: querySetRecord(
                                      parent: verticalJumpLiveDataExerciseRecord
                                          .reference,
                                      queryBuilder: (setRecord) => setRecord
                                          .orderBy('set_creation_date'),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<SetRecord> buttonSetRecordList =
                                          snapshot.data!;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          if (FFAppState().isOfflineMode) {
                                            context
                                                .pushNamed('LiftSelectionCopy');
                                          } else {
                                            if (FFAppState()
                                                    .listOfRepsVertJump
                                                    .length >
                                                1) {
                                              setState(() {
                                                FFAppState()
                                                    .removeAtIndexFromListOfRepsVertJump(
                                                        0);
                                              });
                                              if (functions.dateCheckInfo(
                                                  containerDateOfExerciseRecordList
                                                      .map(
                                                          (e) => e.creationDate)
                                                      .withoutNulls
                                                      .toList())) {
                                                setState(() {});
                                              } else {
                                                await DateOfExerciseRecord
                                                        .createDoc(
                                                            verticalJumpLiveDataExerciseRecord
                                                                .reference)
                                                    .set(
                                                        createDateOfExerciseRecordData(
                                                  creationDate:
                                                      getCurrentTimestamp,
                                                  dateString:
                                                      functions.ymdFormat(
                                                          getCurrentTimestamp),
                                                ));
                                              }

                                              setState(() {
                                                FFAppState().pageIndex = 0;
                                              });

                                              context.goNamed('MainPage');

                                              await SetRecord.createDoc(
                                                      verticalJumpLiveDataExerciseRecord
                                                          .reference)
                                                  .set({
                                                ...createSetRecordData(
                                                  setCreationDate:
                                                      getCurrentTimestamp,
                                                  setExerciseRef:
                                                      verticalJumpLiveDataExerciseRecord
                                                          .reference,
                                                  dateString:
                                                      functions.ymdFormat(
                                                          getCurrentTimestamp),
                                                ),
                                                'set_vertical_jump_reps':
                                                    FFAppState()
                                                        .listOfRepsVertJump,
                                              });
                                            } else {
                                              setState(() {
                                                FFAppState().pageIndex = 0;
                                              });

                                              context.goNamed('MainPage');
                                            }
                                          }
                                        },
                                        text: 'END SET',
                                        options: FFButtonOptions(
                                          height: 55.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .bgBg5,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Lulo',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .txtText2,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        FFAppState().jumpSandboxMode = false;
                                      });
                                    },
                                    text: 'NEW SET',
                                    options: FFButtonOptions(
                                      height: 55.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .btnDefault,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Lulo',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
