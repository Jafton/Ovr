import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exact_rep_data_model.dart';
export 'exact_rep_data_model.dart';

class ExactRepDataWidget extends StatefulWidget {
  const ExactRepDataWidget({
    Key? key,
    this.exerciseName,
    this.date,
    this.setDocuments,
  }) : super(key: key);

  final String? exerciseName;
  final DateTime? date;
  final List<SetRecord>? setDocuments;

  @override
  _ExactRepDataWidgetState createState() => _ExactRepDataWidgetState();
}

class _ExactRepDataWidgetState extends State<ExactRepDataWidget> {
  late ExactRepDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExactRepDataModel());
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
        body: Align(
          alignment: AlignmentDirectional(0.00, 1.00),
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.95,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            color: FlutterFlowTheme.of(context).txtText2,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.exerciseName!.toUpperCase(),
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
                            Text(
                              '${dateTimeFormat(
                                'dd',
                                widget.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )} ${dateTimeFormat(
                                'MMM',
                                widget.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Builder(
                      builder: (context) {
                        final set = widget.setDocuments?.toList() ?? [];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(set.length, (setIndex) {
                            final setItem = set[setIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          'Set ${(setIndex + 1).toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'SF Pro Display',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .txtText2,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            '${valueOrDefault(currentUserDocument?.userUnits, '') == 'lb' ? setItem.setWeight : setItem.setWeightKg}${valueOrDefault(currentUserDocument?.userUnits, '')} x ${setItem.setListOfRep.length.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context).bgBg2,
                                        borderRadius: 10.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .bgStroke,
                                        icon: Icon(
                                          FFIcons.kshare21,
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          size: 20.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).btnBtn,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kavgM,
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Avg [m/s]',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final avgVelocity = setItem
                                                  .setListOfRep
                                                  .map((e) => e.repVelocity)
                                                  .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    avgVelocity.length,
                                                    (avgVelocityIndex) {
                                                  final avgVelocityItem =
                                                      avgVelocity[
                                                          avgVelocityIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      avgVelocityItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .btnBtn,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.findAvg(setItem
                                                    .setListOfRep
                                                    .map((e) => e.repVelocity)
                                                    .toList()),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kmaxM,
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Max [m/s]',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final maxVelocity = setItem
                                                  .setListOfRep
                                                  .map((e) => e.repMaxVelocity)
                                                  .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    maxVelocity.length,
                                                    (maxVelocityIndex) {
                                                  final maxVelocityItem =
                                                      maxVelocity[
                                                          maxVelocityIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      maxVelocityItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .btnBtn,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.findAvg(setItem
                                                    .setListOfRep
                                                    .map(
                                                        (e) => e.repMaxVelocity)
                                                    .toList()),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kinch,
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'ROM [in]',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final rom = setItem.setListOfRep
                                                  .map(
                                                      (e) => e.repRangeOfMotion)
                                                  .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    rom.length, (romIndex) {
                                                  final romItem = rom[romIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      romItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .btnBtn,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.findAvg(setItem
                                                    .setListOfRep
                                                    .map((e) =>
                                                        e.repRangeOfMotion)
                                                    .toList()),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kavgP,
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Avg [w]',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final avgPower = setItem
                                                  .setListOfRep
                                                  .map((e) => e.repPower)
                                                  .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    avgPower.length,
                                                    (avgPowerIndex) {
                                                  final avgPowerItem =
                                                      avgPower[avgPowerIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      avgPowerItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .btnBtn,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.findAvg(setItem
                                                    .setListOfRep
                                                    .map((e) => e.repPower)
                                                    .toList()),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FFIcons.kmaxP,
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Max [w]',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText3,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final maxPow = setItem
                                                  .setListOfRep
                                                  .map((e) => e.repMaxPower)
                                                  .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children:
                                                    List.generate(maxPow.length,
                                                        (maxPowIndex) {
                                                  final maxPowItem =
                                                      maxPow[maxPowIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      maxPowItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .btnBtn,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.findAvg(setItem
                                                    .setListOfRep
                                                    .map((e) => e.repMaxPower)
                                                    .toList()),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
