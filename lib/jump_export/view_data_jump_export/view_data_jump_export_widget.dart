import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_data_jump_export_model.dart';
export 'view_data_jump_export_model.dart';

class ViewDataJumpExportWidget extends StatefulWidget {
  const ViewDataJumpExportWidget({Key? key}) : super(key: key);

  @override
  _ViewDataJumpExportWidgetState createState() =>
      _ViewDataJumpExportWidgetState();
}

class _ViewDataJumpExportWidgetState extends State<ViewDataJumpExportWidget> {
  late ViewDataJumpExportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDataJumpExportModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).bgBg2,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).bgBg2,
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
                fillColor: FlutterFlowTheme.of(context).bgBg4,
                icon: Icon(
                  FFIcons.karrowLeft,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/OVR_JUMP_(app).png',
                  width: MediaQuery.sizeOf(context).width * 0.31,
                  fit: BoxFit.cover,
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '1mo',
                options: FFButtonOptions(
                  height: 52.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgStroke,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText1,
                        fontSize: MediaQuery.sizeOf(context).width < 430.0
                            ? 14.0
                            : 16.0,
                        useGoogleFonts: false,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'BENCH PRESS',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Lulo',
                                      color:
                                          FlutterFlowTheme.of(context).txtText1,
                                      fontSize:
                                          MediaQuery.sizeOf(context).width <
                                                  430.0
                                              ? 24.0
                                              : 36.0,
                                      fontWeight: FontWeight.w900,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 18.0),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'e1RM:',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        fontSize:
                                            MediaQuery.sizeOf(context).width <
                                                    430.0
                                                ? 18.0
                                                : 24.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                TextSpan(
                                  text: ' 319',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        fontSize:
                                            MediaQuery.sizeOf(context).width <
                                                    430.0
                                                ? 18.0
                                                : 24.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF182433),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).bgStroke,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Feb 1',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.krsi,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' RSI',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kjump,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' in',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kgct,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' s',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).bgStroke,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Feb 1',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.krsi,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' RSI',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kjump,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' in',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kgct,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' s',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).bgStroke,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Feb 1',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText2,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.krsi,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' RSI',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kjump,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' in',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Icon(
                                              FFIcons.kgct,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .btnDefault,
                                              size: 24.0,
                                            ),
                                          ),
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '185',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                                TextSpan(
                                                  text: ' s',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'SHARE',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 56.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).btnDefault,
                      textStyle: FlutterFlowTheme.of(context).titleMedium,
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
