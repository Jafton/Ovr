import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/velocity_or_jump/velocity_or_jump_widget.dart';
import '/velocity/view_data/date_of_set/date_of_set_widget.dart';
import '/velocity/view_data/empty_data/empty_data_widget.dart';
import '/velocity/view_data/exercise_choice/exercise_choice_widget.dart';
import '/velocity/view_data/velocity_filter_sort/filter/filter_widget.dart';
import '/velocity/view_data/velocity_filter_sort/sort/sort_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_data_model.dart';
export 'view_data_model.dart';

class ViewDataWidget extends StatefulWidget {
  const ViewDataWidget({Key? key}) : super(key: key);

  @override
  _ViewDataWidgetState createState() => _ViewDataWidgetState();
}

class _ViewDataWidgetState extends State<ViewDataWidget> {
  late ViewDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDataModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AuthUserStreamWidget(
      builder: (context) => StreamBuilder<ExerciseRecord>(
        stream: ExerciseRecord.getDocument(
            (currentUserDocument?.userViewDataExercise?.toList() ?? []).last),
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
          final viewDataExerciseRecord = snapshot.data!;
          return GestureDetector(
            onTap: () =>
                FocusScope.of(context).requestFocus(_model.unfocusNode),
            child: WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).bgBg2,
                appBar: AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).bgBg2,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: VelocityOrJumpWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (FFAppState().velocityOrJump == 'Velocity')
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/OVR_VELOCITY_(app).png',
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.47,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              if (FFAppState().velocityOrJump != 'Velocity')
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/OVR_JUMP_(app).png',
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.33,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              Align(
                                alignment: AlignmentDirectional(-1.00, 0.00),
                                child: Icon(
                                  FFIcons.karrowDown,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 10.0,
                        borderWidth: 1.0,
                        buttonSize: 52.0,
                        fillColor: FlutterFlowTheme.of(context).bgBg4,
                        icon: Icon(
                          FFIcons.kshare21,
                          color: FlutterFlowTheme.of(context).txtText2,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'ViewDataShare',
                            queryParameters: {
                              'exerciseRef': serializeParam(
                                viewDataExerciseRecord.reference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                  actions: [],
                  centerTitle: false,
                  elevation: 0.0,
                ),
                body: SafeArea(
                  top: true,
                  child: StreamBuilder<List<SetRecord>>(
                    stream: querySetRecord(
                      parent: viewDataExerciseRecord.reference,
                      queryBuilder: (setRecord) =>
                          setRecord.orderBy('set_creation_date'),
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
                      List<SetRecord> containerSetRecordList = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ExerciseChoiceWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            viewDataExerciseRecord.name
                                                .toUpperCase(),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Lulo',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText1,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              430.0
                                                          ? 20.0
                                                          : 32.0,
                                                  fontWeight: FontWeight.w900,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Icon(
                                          FFIcons.karrowDown,
                                          color: FlutterFlowTheme.of(context)
                                              .txtText1,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).bgBg5,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().graphTimePeriod =
                                                      '1mo';
                                                  FFAppState().timePeriod =
                                                      functions.timePeriod(
                                                          FFAppState()
                                                              .graphTimePeriod);
                                                });
                                              },
                                              child: Container(
                                                height: 37.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                              .graphTimePeriod ==
                                                          '1mo'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg6
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Text(
                                                    '1mo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().graphTimePeriod =
                                                      '3mo';
                                                  FFAppState().timePeriod =
                                                      functions.timePeriod(
                                                          FFAppState()
                                                              .graphTimePeriod);
                                                });
                                              },
                                              child: Container(
                                                height: 37.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                              .graphTimePeriod ==
                                                          '3mo'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg6
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Text(
                                                    '3mo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().graphTimePeriod =
                                                      '6mo';
                                                  FFAppState().timePeriod =
                                                      functions.timePeriod(
                                                          FFAppState()
                                                              .graphTimePeriod);
                                                });
                                              },
                                              child: Container(
                                                height: 37.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                              .graphTimePeriod ==
                                                          '6mo'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg6
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Text(
                                                    '6mo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().graphTimePeriod =
                                                      '1yr';
                                                  FFAppState().timePeriod =
                                                      functions.timePeriod(
                                                          FFAppState()
                                                              .graphTimePeriod);
                                                });
                                              },
                                              child: Container(
                                                height: 37.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                              .graphTimePeriod ==
                                                          '1yr'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg6
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Text(
                                                    '1yr',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().graphTimePeriod =
                                                      'Pr';
                                                  FFAppState().timePeriod =
                                                      functions.timePeriod(
                                                          FFAppState()
                                                              .graphTimePeriod);
                                                });
                                              },
                                              child: Container(
                                                height: 37.0,
                                                decoration: BoxDecoration(
                                                  color: FFAppState()
                                                              .graphTimePeriod ==
                                                          'Pr'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg6
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Text(
                                                    'Pr',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 18.0, 0.0, 18.0),
                                      child: RichText(
                                        textScaleFactor: MediaQuery.of(context)
                                            .textScaleFactor,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'e1RM:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText2,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            430.0
                                                        ? 18.0
                                                        : 24.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: ' 319',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 18.0
                                                            : 24.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault(
                                                  currentUserDocument
                                                      ?.userUnits,
                                                  ''),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 18.0
                                                            : 24.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lulo',
                                                fontSize:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            430.0
                                                        ? 12.0
                                                        : 24.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: 200.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: FFAppState().chartData,
                                          yData: FFAppState().chartDataY,
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            barWidth: 2.0,
                                            belowBarData: BarAreaData(
                                              show: true,
                                              color: Color(0x00000000),
                                            ),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: AxisBounds(),
                                      xAxisLabelInfo: AxisLabelInfo(
                                        showLabels: true,
                                        labelTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleSmall,
                                        labelInterval: 1.0,
                                      ),
                                      yAxisLabelInfo: AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 120.0),
                                  child:
                                      StreamBuilder<List<DateOfExerciseRecord>>(
                                    stream: queryDateOfExerciseRecord(
                                      parent: viewDataExerciseRecord.reference,
                                      queryBuilder: (dateOfExerciseRecord) =>
                                          dateOfExerciseRecord
                                              .orderBy('creation_date'),
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
                                      List<DateOfExerciseRecord>
                                          containerDateOfExerciseRecordList =
                                          snapshot.data!;
                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF182433),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'DATA',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lulo',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bgBg2,
                                                        borderRadius: 8.0,
                                                        borderWidth: 0.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bgBg2,
                                                        icon: Icon(
                                                          FFIcons.kfilter,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          size: 20.0,
                                                        ),
                                                        onPressed: () async {
                                                          showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            context: context,
                                                            builder: (context) {
                                                              return GestureDetector(
                                                                onTap: () => FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode),
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      FilterWidget(),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bgBg2,
                                                      borderRadius: 8.0,
                                                      borderWidth: 0.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bgBg2,
                                                      icon: Icon(
                                                        FFIcons.ksort,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        size: 20.0,
                                                      ),
                                                      onPressed: () async {
                                                        showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    SortWidget(),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final dateItem = functions
                                                      .sortDate(
                                                          containerDateOfExerciseRecordList
                                                              .toList(),
                                                          FFAppState()
                                                              .setsSortState,
                                                          containerSetRecordList
                                                              .toList(),
                                                          FFAppState()
                                                              .setFilteredState,
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userUnits,
                                                              ''))
                                                      .toList();
                                                  if (dateItem.isEmpty) {
                                                    return EmptyDataWidget();
                                                  }
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: List.generate(
                                                        dateItem.length,
                                                        (dateItemIndex) {
                                                      final dateItemItem =
                                                          dateItem[
                                                              dateItemIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'ExactRepData',
                                                              queryParameters: {
                                                                'exerciseName':
                                                                    serializeParam(
                                                                  viewDataExerciseRecord
                                                                      .name,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'date':
                                                                    serializeParam(
                                                                  dateItemItem
                                                                      .creationDate,
                                                                  ParamType
                                                                      .DateTime,
                                                                ),
                                                                'setDocuments':
                                                                    serializeParam(
                                                                  functions.filterSet(
                                                                      containerSetRecordList
                                                                          .toList(),
                                                                      dateItemItem
                                                                          .dateString),
                                                                  ParamType
                                                                      .Document,
                                                                  true,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'setDocuments': functions.filterSet(
                                                                    containerSetRecordList
                                                                        .toList(),
                                                                    dateItemItem
                                                                        .dateString),
                                                              },
                                                            );
                                                          },
                                                          child:
                                                              DateOfSetWidget(
                                                            key: Key(
                                                                'Keyfdv_${dateItemIndex}_of_${dateItem.length}'),
                                                            dateRef:
                                                                dateItemItem
                                                                    .reference,
                                                            exerciseRef:
                                                                viewDataExerciseRecord
                                                                    .reference,
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
