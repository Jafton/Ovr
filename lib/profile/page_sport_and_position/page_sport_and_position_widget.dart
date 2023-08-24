import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/personal_info/sport_and_position_component/sport_and_position_component_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_sport_and_position_model.dart';
export 'page_sport_and_position_model.dart';

class PageSportAndPositionWidget extends StatefulWidget {
  const PageSportAndPositionWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final String? parameter1;

  @override
  _PageSportAndPositionWidgetState createState() =>
      _PageSportAndPositionWidgetState();
}

class _PageSportAndPositionWidgetState
    extends State<PageSportAndPositionWidget> {
  late PageSportAndPositionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageSportAndPositionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'PERSONAL INFO',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Text(
                          'Sport · Position',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              StreamBuilder<List<SportAndPositionRecord>>(
                stream: querySportAndPositionRecord(
                  parent: currentUserReference,
                  queryBuilder: (sportAndPositionRecord) =>
                      sportAndPositionRecord.orderBy('creation_date'),
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
                  List<SportAndPositionRecord>
                      listViewSportAndPositionRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewSportAndPositionRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewSportAndPositionRecord =
                          listViewSportAndPositionRecordList[listViewIndex];
                      return SportAndPositionComponentWidget(
                        key: Key(
                            'Keykqa_${listViewIndex}_of_${listViewSportAndPositionRecordList.length}'),
                        sport: listViewSportAndPositionRecord.sport,
                        position: listViewSportAndPositionRecord.position,
                        sportAndPositionRef:
                            listViewSportAndPositionRecord.reference,
                        short: listViewSportAndPositionRecord.position,
                      );
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: StreamBuilder<List<SportAndPositionRecord>>(
                  stream: querySportAndPositionRecord(
                    parent: currentUserReference,
                    queryBuilder: (sportAndPositionRecord) =>
                        sportAndPositionRecord.orderBy('creation_date'),
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
                    List<SportAndPositionRecord>
                        buttonSportAndPositionRecordList = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: buttonSportAndPositionRecordList.length >= 3
                          ? null
                          : () async {
                              if ((buttonSportAndPositionRecordList.length <
                                      1) ||
                                  FFAppState().boolean) {
                                await SportAndPositionRecord.createDoc(
                                        currentUserReference!)
                                    .set(createSportAndPositionRecordData(
                                  creationDate: getCurrentTimestamp,
                                ));
                                setState(() {
                                  FFAppState().boolean = false;
                                });
                              }
                            },
                      text: 'ADD MORE SPORTS',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 55.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).bgStroke,
                        textStyle: FlutterFlowTheme.of(context).titleMedium,
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                        disabledTextColor:
                            FlutterFlowTheme.of(context).txtText2,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: StreamBuilder<UserRecord>(
                  stream: UserRecord.getDocument(currentUserReference!),
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
                    final buttonUserRecord = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          FFAppState().boolean = false;
                        });
                        Navigator.pop(context);
                      },
                      text: 'CONFIRM',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 55.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).btnDefault,
                        textStyle: FlutterFlowTheme.of(context).titleMedium,
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
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
  }
}
