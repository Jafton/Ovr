import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/view_data/share/share_set_data/share_set_data_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'view_data_share_model.dart';
export 'view_data_share_model.dart';

class ViewDataShareWidget extends StatefulWidget {
  const ViewDataShareWidget({
    Key? key,
    this.exerciseRef,
  }) : super(key: key);

  final DocumentReference? exerciseRef;

  @override
  _ViewDataShareWidgetState createState() => _ViewDataShareWidgetState();
}

class _ViewDataShareWidgetState extends State<ViewDataShareWidget> {
  late ViewDataShareModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDataShareModel());
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
        final viewDataShareExerciseRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).bgBg2,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).bgBg2,
              automaticallyImplyLeading: false,
              title: Row(
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
                    },
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/OVR_VELOCITY_(app).png',
                      width: MediaQuery.sizeOf(context).width * 0.47,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 52.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bgStroke,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          FFAppState().graphTimePeriod,
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize:
                                        MediaQuery.sizeOf(context).width < 430.0
                                            ? 14.0
                                            : 16.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Text(
                                      viewDataShareExerciseRecord.name
                                          .toUpperCase(),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Lulo',
                                            color: FlutterFlowTheme.of(context)
                                                .txtText1,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width <
                                                    430.0
                                                ? 20.0
                                                : 32.0,
                                            fontWeight: FontWeight.w900,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 18.0),
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'e1RM:',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          fontSize:
                                              MediaQuery.sizeOf(context).width <
                                                      430.0
                                                  ? 18.0
                                                  : 24.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' 319',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          fontSize:
                                              MediaQuery.sizeOf(context).width <
                                                      430.0
                                                  ? 18.0
                                                  : 24.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault(
                                        currentUserDocument?.userUnits, ''),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          fontSize:
                                              MediaQuery.sizeOf(context).width <
                                                      430.0
                                                  ? 18.0
                                                  : 24.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: false,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 188.0,
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
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  showGrid: true,
                                  showBorder: false,
                                ),
                                axisBounds: AxisBounds(),
                                xAxisLabelInfo: AxisLabelInfo(
                                  showLabels: true,
                                  labelTextStyle:
                                      FlutterFlowTheme.of(context).titleSmall,
                                  labelInterval: 1.0,
                                ),
                                yAxisLabelInfo: AxisLabelInfo(),
                              ),
                            ),
                          ),
                          StreamBuilder<List<SetRecord>>(
                            stream: querySetRecord(
                              parent: widget.exerciseRef,
                              queryBuilder: (setRecord) => setRecord.where(
                                  'set_creation_date',
                                  isGreaterThan: FFAppState().timePeriod),
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
                              List<SetRecord> containerSetRecordList =
                                  snapshot.data!;
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    AuthUserStreamWidget(
                                      builder: (context) => Builder(
                                        builder: (context) {
                                          final set = functions
                                              .sortSetQuery(
                                                  containerSetRecordList
                                                      .toList(),
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.userUnits,
                                                      ''),
                                                  'max',
                                                  FFAppState().graphTimePeriod)
                                              .toList();
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(set.length,
                                                (setIndex) {
                                              final setItem = set[setIndex];
                                              return ShareSetDataWidget(
                                                key: Key(
                                                    'Key04b_${setIndex}_of_${set.length}'),
                                                parameter1: setItem.setWeight,
                                                parameter2: setItem.setWeightKg,
                                                parameter3: setItem.setListOfRep
                                                    .map((e) => e.repVelocity)
                                                    .toList(),
                                                parameter4: setItem.setListOfRep
                                                    .map(
                                                        (e) => e.repMaxVelocity)
                                                    .toList(),
                                                parameter5: setItem.setListOfRep
                                                    .map((e) => e.repMaxPower)
                                                    .toList(),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ),
                                    if (containerSetRecordList.length > 5)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 8.0,
                                              height: 8.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg6,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 4.0, 0.0),
                                              child: Container(
                                                width: 8.0,
                                                height: 8.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .bgBg6,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 8.0,
                                              height: 8.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg6,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (containerSetRecordList.length > 5)
                                      AuthUserStreamWidget(
                                        builder: (context) => Builder(
                                          builder: (context) {
                                            final set = functions
                                                .sortSetQuery(
                                                    containerSetRecordList
                                                        .toList(),
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.userUnits,
                                                        ''),
                                                    'min',
                                                    FFAppState()
                                                        .graphTimePeriod)
                                                .toList();
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  set.length, (setIndex) {
                                                final setItem = set[setIndex];
                                                return ShareSetDataWidget(
                                                  key: Key(
                                                      'Keya6z_${setIndex}_of_${set.length}'),
                                                  parameter1: setItem.setWeight,
                                                  parameter2:
                                                      setItem.setWeightKg,
                                                  parameter3: setItem
                                                      .setListOfRep
                                                      .map((e) => e.repVelocity)
                                                      .toList(),
                                                  parameter4: setItem
                                                      .setListOfRep
                                                      .map((e) =>
                                                          e.repMaxVelocity)
                                                      .toList(),
                                                  parameter5: setItem
                                                      .setListOfRep
                                                      .map((e) => e.repMaxPower)
                                                      .toList(),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Share.share(
                            '',
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        },
                        text: 'SHARE',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 56.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).btnDefault,
                          textStyle: FlutterFlowTheme.of(context).titleMedium,
                          elevation: 0.0,
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
          ),
        );
      },
    );
  }
}
