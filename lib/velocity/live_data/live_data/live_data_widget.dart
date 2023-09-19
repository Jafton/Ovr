import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/live_data/end_set/end_set_widget.dart';
import '/velocity/live_data/rep_data/rep_data_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'live_data_model.dart';
export 'live_data_model.dart';

class LiveDataWidget extends StatefulWidget {
  const LiveDataWidget({
    Key? key,
    this.exerciseName,
    this.exerciseRef,
  }) : super(key: key);

  final String? exerciseName;
  final DocumentReference? exerciseRef;

  @override
  _LiveDataWidgetState createState() => _LiveDataWidgetState();
}

class _LiveDataWidgetState extends State<LiveDataWidget> {
  late LiveDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LiveDataModel());
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
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.repDataModel,
                            updateCallback: () => setState(() {}),
                            child: RepDataWidget(
                              parameter1: widget.exerciseName,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 200.0,
                              child: FlutterFlowLineChart(
                                data: [
                                  FFLineChartData(
                                    xData: functions.listOfIndexes(
                                        FFAppState().listOfReps.toList()),
                                    yData: functions.dataStructToList(
                                        FFAppState().listOfReps.toList()),
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
                                      FlutterFlowTheme.of(context).bodySmall,
                                  labelInterval: 1.0,
                                  labelFormatter: LabelFormatter(
                                    numberFormat: (val) => formatNumber(
                                      val,
                                      formatType: FormatType.custom,
                                      format: '0',
                                      locale: '',
                                    ),
                                  ),
                                ),
                                yAxisLabelInfo: AxisLabelInfo(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  setState(() {
                    FFAppState().addToListOfReps(RepStruct(
                      repVelocity: functions
                          .getRandomDouble(0.50, 1.80)
                          .toStringAsFixed(2),
                      repFatigue: functions
                          .getRandomDouble(1.0, 100.0)
                          .toStringAsFixed(0),
                      repMaxVelocity: functions
                          .getRandomDouble(1.0, 2.0)
                          .toStringAsFixed(2),
                      repRangeOfMotion: functions
                          .getRandomDouble(10.0, 20.0)
                          .toStringAsFixed(1),
                      repPower: functions
                          .getRandomDouble(400.0, 700.0)
                          .toStringAsFixed(0),
                      repMaxPower: functions
                          .getRandomDouble(700.0, 999.0)
                          .toStringAsFixed(0),
                    ));
                  });
                },
                text: 'ADD REP',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).btnDefault,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Lulo',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: FFAppState().listOfReps.length < 2
                      ? null
                      : () async {
                          setState(() {
                            FFAppState().removeAtIndexFromListOfReps(0);
                          });
                        },
                  text: 'DELETE REP',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 56.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).btnDefault,
                    textStyle: FlutterFlowTheme.of(context).titleMedium,
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    disabledColor: FlutterFlowTheme.of(context).bgStroke,
                    disabledTextColor: FlutterFlowTheme.of(context).txtText2,
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.endSetModel,
                updateCallback: () => setState(() {}),
                child: EndSetWidget(
                  parameter1: widget.exerciseRef,
                  parameter2: widget.exerciseName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
