import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_of_set_model.dart';
export 'date_of_set_model.dart';

class DateOfSetWidget extends StatefulWidget {
  const DateOfSetWidget({
    Key? key,
    this.dateRef,
    this.exerciseRef,
  }) : super(key: key);

  final DocumentReference? dateRef;
  final DocumentReference? exerciseRef;

  @override
  _DateOfSetWidgetState createState() => _DateOfSetWidgetState();
}

class _DateOfSetWidgetState extends State<DateOfSetWidget> {
  late DateOfSetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateOfSetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<DateOfExerciseRecord>(
      stream: DateOfExerciseRecord.getDocument(widget.dateRef!),
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
        final columnDateOfExerciseRecord = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StreamBuilder<List<SetRecord>>(
              stream: querySetRecord(
                parent: widget.exerciseRef,
                queryBuilder: (setRecord) => setRecord.where('date_string',
                    isEqualTo: columnDateOfExerciseRecord.dateString),
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
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: dateTimeFormat(
                                  'dd',
                                  columnDateOfExerciseRecord.creationDate!,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Bicyclette',
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: '\n',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Bicyclette',
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: dateTimeFormat(
                                  'MMM',
                                  columnDateOfExerciseRecord.creationDate!,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ).toUpperCase(),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
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
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: containerSetRecordList.length.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color:
                                          FlutterFlowTheme.of(context).txtText1,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: ' set(s) | ',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                              TextSpan(
                                text: functions
                                    .setMaxAndMinWeight(
                                        containerSetRecordList.toList(),
                                        valueOrDefault(
                                            currentUserDocument?.userUnits, ''))
                                    .last,
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                              TextSpan(
                                text: ' - ',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: functions
                                    .setMaxAndMinWeight(
                                        containerSetRecordList.toList(),
                                        valueOrDefault(
                                            currentUserDocument?.userUnits, ''))
                                    .first,
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                              TextSpan(
                                text: valueOrDefault(
                                    currentUserDocument?.userUnits, ''),
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                              TextSpan(
                                text: '\n',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
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
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
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
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
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
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: ' m/s',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color:
                                          FlutterFlowTheme.of(context).txtText2,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
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
      },
    );
  }
}
