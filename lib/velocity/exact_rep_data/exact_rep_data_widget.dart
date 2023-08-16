import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exact_rep_data_model.dart';
export 'exact_rep_data_model.dart';

class ExactRepDataWidget extends StatefulWidget {
  const ExactRepDataWidget({Key? key}) : super(key: key);

  @override
  _ExactRepDataWidgetState createState() => _ExactRepDataWidgetState();
}

class _ExactRepDataWidgetState extends State<ExactRepDataWidget> {
  late ExactRepDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExactRepDataModel());
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
                      'BENCH PRESS',
                      style: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Bicyclette',
                            fontSize: MediaQuery.sizeOf(context).width < 430.0
                                ? 24.0
                                : 36.0,
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
                    mainAxisSize: MainAxisSize.max,
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
                            FFIcons.kavgM,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Avg [m/s]',
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        fontSize:
                                            MediaQuery.sizeOf(context).width <
                                                    430.0
                                                ? 14.0
                                                : 16.0,
                                        useGoogleFonts: false,
                                      ),
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
                            FFIcons.kmaxM,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Max [m/s]',
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
                            FFIcons.kinch,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'ROM [in]',
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
                            FFIcons.kavgP,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Avg [w]',
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
                            FFIcons.kmaxP,
                            color: FlutterFlowTheme.of(context).btnDefault,
                            size: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Max [w]',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
