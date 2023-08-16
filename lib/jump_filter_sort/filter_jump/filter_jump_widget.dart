import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_jump_model.dart';
export 'filter_jump_model.dart';

class FilterJumpWidget extends StatefulWidget {
  const FilterJumpWidget({Key? key}) : super(key: key);

  @override
  _FilterJumpWidgetState createState() => _FilterJumpWidgetState();
}

class _FilterJumpWidgetState extends State<FilterJumpWidget> {
  late FilterJumpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterJumpModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'Filter',
                style: FlutterFlowTheme.of(context).titleSmall,
              ),
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).btnBtn,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Min',
                          labelStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText4,
                                fontSize:
                                    MediaQuery.sizeOf(context).width < 430.0
                                        ? 14.0
                                        : 16.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).bgBg2,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
                              fontSize: MediaQuery.sizeOf(context).width < 430.0
                                  ? 14.0
                                  : 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Max',
                          labelStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText4,
                                fontSize:
                                    MediaQuery.sizeOf(context).width < 430.0
                                        ? 14.0
                                        : 16.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).bgBg2,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).txtText2,
                              fontSize: MediaQuery.sizeOf(context).width < 430.0
                                  ? 14.0
                                  : 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).bgStroke,
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 52.0,
                    fillColor: FlutterFlowTheme.of(context).bgStroke,
                    icon: Icon(
                      FFIcons.kdone,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
