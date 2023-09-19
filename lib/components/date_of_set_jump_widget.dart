import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_of_set_jump_model.dart';
export 'date_of_set_jump_model.dart';

class DateOfSetJumpWidget extends StatefulWidget {
  const DateOfSetJumpWidget({
    Key? key,
    required this.parameter1,
    required this.parameter2,
    this.parameter3,
    this.parameter4,
  }) : super(key: key);

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final DocumentReference? parameter4;

  @override
  _DateOfSetJumpWidgetState createState() => _DateOfSetJumpWidgetState();
}

class _DateOfSetJumpWidgetState extends State<DateOfSetJumpWidget> {
  late DateOfSetJumpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateOfSetJumpModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<List<SetRecord>>(
          stream: querySetRecord(
            parent: widget.parameter4,
            queryBuilder: (setRecord) =>
                setRecord.where('date_string', isEqualTo: widget.parameter3),
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
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: widget.parameter1!,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Lulo',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: '\n',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Lulo',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: widget.parameter2!.toUpperCase(),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontWeight: FontWeight.w900,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: containerSetRecordList.length.toString(),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText1,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: ' set(s) | ',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          TextSpan(
                            text: functions.numberOfVerticalJumps(
                                containerSetRecordList.toList()),
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          TextSpan(
                            text: '  Jump(s)\n',
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                          TextSpan(
                            text: functions
                                .setAvgVelocities(
                                    containerSetRecordList.toList())
                                .first,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: ' - ',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: functions
                                .setAvgVelocities(
                                    containerSetRecordList.toList())
                                .last,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: '28in',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bgStroke,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      FFIcons.karrowRight,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).btnBtn,
        ),
      ],
    );
  }
}
