import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'set_exact_rep_data_model.dart';
export 'set_exact_rep_data_model.dart';

class SetExactRepDataWidget extends StatefulWidget {
  const SetExactRepDataWidget({
    Key? key,
    this.parameter1,
    this.parameter4,
    this.setDoc,
    this.exerciseName,
  }) : super(key: key);

  final int? parameter1;
  final int? parameter4;
  final SetRecord? setDoc;
  final String? exerciseName;

  @override
  _SetExactRepDataWidgetState createState() => _SetExactRepDataWidgetState();
}

class _SetExactRepDataWidgetState extends State<SetExactRepDataWidget> {
  late SetExactRepDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetExactRepDataModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: Text(
                  'Set ${(widget.parameter1! + 1).toString()}',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Expanded(
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    '${valueOrDefault(currentUserDocument?.userUnits, '') == 'lb' ? widget.setDoc?.setWeight : widget.setDoc?.setWeightKg}${valueOrDefault(currentUserDocument?.userUnits, '')} x ${widget.parameter4?.toString()}',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).bgStroke,
                borderRadius: 10.0,
                borderWidth: 0.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).bgStroke,
                icon: Icon(
                  FFIcons.kshare21,
                  color: FlutterFlowTheme.of(context).txtText2,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'SetDataShare',
                    queryParameters: {
                      'setDoc': serializeParam(
                        widget.setDoc,
                        ParamType.Document,
                      ),
                      'exerciseName': serializeParam(
                        widget.exerciseName,
                        ParamType.String,
                      ),
                      'parameter1': serializeParam(
                        widget.parameter1,
                        ParamType.int,
                      ),
                      'parameter4': serializeParam(
                        widget.parameter4,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'setDoc': widget.setDoc,
                    },
                  );
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FFIcons.kavgM,
                    color: FlutterFlowTheme.of(context).btnDefault,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Avg [m/s]',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText3,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final avgVelocity = widget.setDoc?.setListOfRep
                              ?.map((e) => e.repVelocity)
                              .toList()
                              ?.toList() ??
                          [];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(avgVelocity.length,
                            (avgVelocityIndex) {
                          final avgVelocityItem = avgVelocity[avgVelocityIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              avgVelocityItem,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.findAvg(
                            widget.setDoc?.setListOfRep
                                ?.map((e) => e.repVelocity)
                                .toList()
                                ?.toList(),
                            2),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FFIcons.kmaxM,
                    color: FlutterFlowTheme.of(context).btnDefault,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Max [m/s]',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText3,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final maxVelocity = widget.setDoc?.setListOfRep
                              ?.map((e) => e.repMaxVelocity)
                              .toList()
                              ?.toList() ??
                          [];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(maxVelocity.length,
                            (maxVelocityIndex) {
                          final maxVelocityItem = maxVelocity[maxVelocityIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              maxVelocityItem,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.findAvg(
                            widget.setDoc?.setListOfRep
                                ?.map((e) => e.repMaxVelocity)
                                .toList()
                                ?.toList(),
                            2),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FFIcons.kinch,
                    color: FlutterFlowTheme.of(context).btnDefault,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'ROM [in]',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText3,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final rom = widget.setDoc?.setListOfRep
                              ?.map((e) => e.repRangeOfMotion)
                              .toList()
                              ?.toList() ??
                          [];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(rom.length, (romIndex) {
                          final romItem = rom[romIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              romItem,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.findAvg(
                            widget.setDoc?.setListOfRep
                                ?.map((e) => e.repRangeOfMotion)
                                .toList()
                                ?.toList(),
                            1),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FFIcons.kavgP,
                    color: FlutterFlowTheme.of(context).btnDefault,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Avg [w]',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText3,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final avgPower = widget.setDoc?.setListOfRep
                              ?.map((e) => e.repPower)
                              .toList()
                              ?.toList() ??
                          [];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(avgPower.length, (avgPowerIndex) {
                          final avgPowerItem = avgPower[avgPowerIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              avgPowerItem,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.findAvg(
                            widget.setDoc?.setListOfRep
                                ?.map((e) => e.repPower)
                                .toList()
                                ?.toList(),
                            0),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    FFIcons.kmaxP,
                    color: FlutterFlowTheme.of(context).btnDefault,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Max [w]',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText3,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final maxPow = widget.setDoc?.setListOfRep
                              ?.map((e) => e.repMaxPower)
                              .toList()
                              ?.toList() ??
                          [];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(maxPow.length, (maxPowIndex) {
                          final maxPowItem = maxPow[maxPowIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              maxPowItem,
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.findAvg(
                            widget.setDoc?.setListOfRep
                                ?.map((e) => e.repMaxPower)
                                .toList()
                                ?.toList(),
                            0),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
