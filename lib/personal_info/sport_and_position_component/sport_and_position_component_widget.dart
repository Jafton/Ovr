import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/personal_info/delete_sport/delete_sport_widget.dart';
import '/personal_info/position_selector/position_selector_widget.dart';
import '/personal_info/sports_selector/sports_selector_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sport_and_position_component_model.dart';
export 'sport_and_position_component_model.dart';

class SportAndPositionComponentWidget extends StatefulWidget {
  const SportAndPositionComponentWidget({
    Key? key,
    this.sport,
    this.position,
    this.sportAndPositionRef,
    this.short,
  }) : super(key: key);

  final String? sport;
  final String? position;
  final DocumentReference? sportAndPositionRef;
  final String? short;

  @override
  _SportAndPositionComponentWidgetState createState() =>
      _SportAndPositionComponentWidgetState();
}

class _SportAndPositionComponentWidgetState
    extends State<SportAndPositionComponentWidget> {
  late SportAndPositionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportAndPositionComponentModel());
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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    FFIcons.kcrown,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Sport',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText2,
                            fontSize: MediaQuery.sizeOf(context).width < 430.0
                                ? 14.0
                                : 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SportsSelectorWidget(
                          sportAndPositionRef: widget.sportAndPositionRef,
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgStroke,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.sport,
                            'Select',
                          ),
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
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: StreamBuilder<SportAndPositionRecord>(
              stream: SportAndPositionRecord.getDocument(
                  widget.sportAndPositionRef!),
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
                final rowSportAndPositionRecord = snapshot.data!;
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kuser,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Position',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  fontSize:
                                      MediaQuery.sizeOf(context).width < 430.0
                                          ? 14.0
                                          : 16.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                    StreamBuilder<List<PositionRecord>>(
                      stream: queryPositionRecord(
                        parent: rowSportAndPositionRecord.sportRef,
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
                        List<PositionRecord> containerPositionRecordList =
                            snapshot.data!;
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((containerPositionRecordList.length > 0) &&
                                (widget.sport != null && widget.sport != '')) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: PositionSelectorWidget(
                                      sportAndpositionRef:
                                          widget.sportAndPositionRef,
                                      sport: widget.sport,
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            }
                          },
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).bgStroke,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      containerPositionRecordList.length > 0
                                          ? widget.position
                                          : 'N/A',
                                      'Select',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: (containerPositionRecordList
                                                          .length >
                                                      0) &&
                                                  (widget.sport != null &&
                                                      widget.sport != '')
                                              ? FlutterFlowTheme.of(context)
                                                  .txtText1
                                              : FlutterFlowTheme.of(context)
                                                  .txtText3,
                                          fontSize:
                                              MediaQuery.sizeOf(context).width <
                                                      430.0
                                                  ? 14.0
                                                  : 16.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  if (containerPositionRecordList.length > 0)
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderRadius: 10.0,
                buttonSize: 40.0,
                fillColor: Color(0xFF1F2F42),
                icon: Icon(
                  FFIcons.kdelete,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 16.0,
                ),
                onPressed: () async {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: DeleteSportWidget(
                          sportAndPositionRef: widget.sportAndPositionRef,
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
              Expanded(
                child: Container(
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).btnBtn,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
