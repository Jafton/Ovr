import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_s_imode_model.dart';
export 'r_s_imode_model.dart';

class RSImodeWidget extends StatefulWidget {
  const RSImodeWidget({Key? key}) : super(key: key);

  @override
  _RSImodeWidgetState createState() => _RSImodeWidgetState();
}

class _RSImodeWidgetState extends State<RSImodeWidget> {
  late RSImodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RSImodeModel());
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
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).bgBg2,
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).bgBg2,
                  icon: Icon(
                    FFIcons.kclose,
                    color: FlutterFlowTheme.of(context).txtText2,
                    size: 20.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'RSI MODE',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Bicyclette',
                                fontWeight: FontWeight.w900,
                                useGoogleFonts: false,
                              ),
                    ),
                    Text(
                      '27 Apr ',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText2,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: Text(
                          'Set 1',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '135lb x 6',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).bgBg2,
                        borderRadius: 10.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).bgStroke,
                        icon: Icon(
                          FFIcons.kshare21,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            FFIcons.khashtag1,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Jump',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText3,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).btnBtn,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            FFIcons.krsi,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'RSI',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText3,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).btnBtn,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            FFIcons.kjump,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'in',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText3,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).btnBtn,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            FFIcons.kgct,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              's',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText3,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).btnBtn,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  '0.91',
                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'MORE',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).bgBg2,
                        textStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Bicyclette',
                                  color: FlutterFlowTheme.of(context).txtText2,
                                  useGoogleFonts: false,
                                ),
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
          ],
        ),
      ),
    );
  }
}
