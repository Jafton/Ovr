import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
    this.dateRed,
  }) : super(key: key);

  final DocumentReference? dateRed;

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
      stream: DateOfExerciseRecord.getDocument(widget.dateRed!),
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
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '06\n',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Bicyclette',
                                color: FlutterFlowTheme.of(context).txtText2,
                                useGoogleFonts: false,
                              ),
                        ),
                        TextSpan(
                          text: 'MAY',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Bicyclette',
                                color: FlutterFlowTheme.of(context).txtText2,
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
                          text:
                              (columnDateOfExerciseRecord.setReference.length +
                                      1)
                                  .toString(),
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
                          text: '135lb - 275lb ',
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
                          text: '0.91m/s - 0.28m/s',
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
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).bgStroke,
                  borderRadius: 8.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).bgStroke,
                  icon: Icon(
                    FFIcons.karrowRight,
                    color: FlutterFlowTheme.of(context).txtText2,
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
          ],
        );
      },
    );
  }
}
