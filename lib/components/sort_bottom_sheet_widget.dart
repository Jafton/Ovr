import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sort_bottom_sheet_model.dart';
export 'sort_bottom_sheet_model.dart';

class SortBottomSheetWidget extends StatefulWidget {
  const SortBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _SortBottomSheetWidgetState createState() => _SortBottomSheetWidgetState();
}

class _SortBottomSheetWidgetState extends State<SortBottomSheetWidget> {
  late SortBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortBottomSheetModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgBg5,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 42.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  _model.updatePage(() {
                    FFAppState().sortState = 'Name: a-z';
                  });
                },
                text: 'A - Z',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
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
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                  _model.updatePage(() {
                    FFAppState().sortState = 'Name: z-a';
                  });
                },
                text: 'Z - A',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
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
                ),
              ),
            ),
            if (FFAppState().velocityOrJump == 'Velocity')
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    _model.updatePage(() {
                      FFAppState().sortState = 'Most popular';
                    });
                  },
                  text: 'Most Popular',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).bgBg5,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
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
                  ),
                ),
              ),
            if (FFAppState().velocityOrJump != 'Velocity')
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    _model.updatePage(() {
                      FFAppState().sortState = 'Last used';
                    });
                  },
                  text: 'Last Used',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).bgBg5,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
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
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
