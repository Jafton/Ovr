import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sports_selector_model.dart';
export 'sports_selector_model.dart';

class SportsSelectorWidget extends StatefulWidget {
  const SportsSelectorWidget({
    Key? key,
    this.sportAndPositionRef,
  }) : super(key: key);

  final DocumentReference? sportAndPositionRef;

  @override
  _SportsSelectorWidgetState createState() => _SportsSelectorWidgetState();
}

class _SportsSelectorWidgetState extends State<SportsSelectorWidget> {
  late SportsSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportsSelectorModel());
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
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).width < 430.0 ? 400.0 : 500.0,
      ),
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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 42.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                child: Container(
                  width: 50.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg6,
                  ),
                ),
              ),
              StreamBuilder<List<SportsRecord>>(
                stream: querySportsRecord(),
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
                  List<SportsRecord> columnSportsRecordList = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(columnSportsRecordList.length,
                        (columnIndex) {
                      final columnSportsRecord =
                          columnSportsRecordList[columnIndex];
                      return FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);

                          await widget.sportAndPositionRef!
                              .update(createSportAndPositionRecordData(
                            sport: columnSportsRecord.name,
                            sportRef: columnSportsRecord.reference,
                            position: 'N/A',
                          ));
                          _model.updatePage(() {});
                        },
                        text: columnSportsRecord.name,
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
                                color: FlutterFlowTheme.of(context).txtText1,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: FlutterFlowTheme.of(context).bgStroke,
                          hoverElevation: 0.0,
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
    );
  }
}
