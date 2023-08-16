import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'position_selector_model.dart';
export 'position_selector_model.dart';

class PositionSelectorWidget extends StatefulWidget {
  const PositionSelectorWidget({
    Key? key,
    this.sportAndpositionRef,
    this.sport,
  }) : super(key: key);

  final DocumentReference? sportAndpositionRef;
  final String? sport;

  @override
  _PositionSelectorWidgetState createState() => _PositionSelectorWidgetState();
}

class _PositionSelectorWidgetState extends State<PositionSelectorWidget> {
  late PositionSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PositionSelectorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<SportAndPositionRecord>(
      stream: SportAndPositionRecord.getDocument(widget.sportAndpositionRef!),
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
        final containerSportAndPositionRecord = snapshot.data!;
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF182433),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: Container(
                          width: 50.0,
                          height: 5.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).bgBg6,
                          ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.sport,
                          'Sport',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).btnBtn,
                      ),
                      StreamBuilder<List<PositionRecord>>(
                        stream: queryPositionRecord(
                          parent: containerSportAndPositionRecord.sportRef,
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
                          List<PositionRecord> listViewPositionRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewPositionRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewPositionRecord =
                                  listViewPositionRecordList[listViewIndex];
                              return FFButtonWidget(
                                onPressed: () async {
                                  await widget.sportAndpositionRef!
                                      .update(createSportAndPositionRecordData(
                                    position: listViewPositionRecord.short,
                                  ));
                                  Navigator.pop(context);
                                },
                                text: listViewPositionRecord.positionName,
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).bgBg5,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).bgStroke,
                                  hoverElevation: 0.0,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
