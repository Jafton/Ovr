import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'right_code_dialog_model.dart';
export 'right_code_dialog_model.dart';

class RightCodeDialogWidget extends StatefulWidget {
  const RightCodeDialogWidget({Key? key}) : super(key: key);

  @override
  _RightCodeDialogWidgetState createState() => _RightCodeDialogWidgetState();
}

class _RightCodeDialogWidgetState extends State<RightCodeDialogWidget> {
  late RightCodeDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RightCodeDialogModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.8,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF182433),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Success!',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).txtText1,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Your password has been successfully changed.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 7.0, 0.0, 5.0),
                          child: Text(
                            'Close',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color:
                                      FlutterFlowTheme.of(context).btnDefault,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
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
    );
  }
}
