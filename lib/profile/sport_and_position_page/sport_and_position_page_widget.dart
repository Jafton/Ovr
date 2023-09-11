import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/personal_info/sport_and_position_component/sport_and_position_component_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sport_and_position_page_model.dart';
export 'sport_and_position_page_model.dart';

class SportAndPositionPageWidget extends StatefulWidget {
  const SportAndPositionPageWidget({Key? key}) : super(key: key);

  @override
  _SportAndPositionPageWidgetState createState() =>
      _SportAndPositionPageWidgetState();
}

class _SportAndPositionPageWidgetState
    extends State<SportAndPositionPageWidget> {
  late SportAndPositionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportAndPositionPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<SportAndPositionRecord>>(
      stream: querySportAndPositionRecord(
        parent: currentUserReference,
        queryBuilder: (sportAndPositionRecord) =>
            sportAndPositionRecord.orderBy('creation_date'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).bgBg5,
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
        List<SportAndPositionRecord>
            sportAndPositionPageSportAndPositionRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).bgBg5,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).bgBg4,
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
                    fillColor: FlutterFlowTheme.of(context).bgStroke,
                    icon: Icon(
                      FFIcons.karrowLeft,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                      if (sportAndPositionPageSportAndPositionRecordList
                                  .last.sport ==
                              null ||
                          sportAndPositionPageSportAndPositionRecordList
                                  .last.sport ==
                              '') {
                        await sportAndPositionPageSportAndPositionRecordList
                            .last.reference
                            .delete();
                      }
                    },
                  ),
                  Text(
                    'CHANGE\nSPORT',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Bicyclette',
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
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
              child: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              'PERSONAL INFO',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium,
                                            ),
                                          ),
                                          Text(
                                            'Sport · Position',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'SF Pro Display',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText2,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final sport =
                                        sportAndPositionPageSportAndPositionRecordList
                                            .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: sport.length,
                                      itemBuilder: (context, sportIndex) {
                                        final sportItem = sport[sportIndex];
                                        return SportAndPositionComponentWidget(
                                          key: Key(
                                              'Key5ij_${sportIndex}_of_${sport.length}'),
                                          sport: sportItem.sport,
                                          position: sportItem.position,
                                          sportAndPositionRef:
                                              sportItem.reference,
                                          short: sportItem.position,
                                        );
                                      },
                                    );
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed:
                                        sportAndPositionPageSportAndPositionRecordList
                                                    .length >=
                                                3
                                            ? null
                                            : () async {
                                                if ((sportAndPositionPageSportAndPositionRecordList
                                                            .length <
                                                        1) ||
                                                    (sportAndPositionPageSportAndPositionRecordList
                                                                .last.sport !=
                                                            null &&
                                                        sportAndPositionPageSportAndPositionRecordList
                                                                .last.sport !=
                                                            '')) {
                                                  await SportAndPositionRecord
                                                          .createDoc(
                                                              currentUserReference!)
                                                      .set(
                                                          createSportAndPositionRecordData(
                                                    creationDate:
                                                        getCurrentTimestamp,
                                                  ));
                                                }
                                              },
                                    text: 'ADD MORE SPORTS',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 56.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).bgStroke,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context).txtText2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                      if (sportAndPositionPageSportAndPositionRecordList
                                                  .last.sport ==
                                              null ||
                                          sportAndPositionPageSportAndPositionRecordList
                                                  .last.sport ==
                                              '') {
                                        await sportAndPositionPageSportAndPositionRecordList
                                            .last.reference
                                            .delete();
                                      }
                                    },
                                    text: 'CONFIRM',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 56.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .btnDefault,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium,
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
