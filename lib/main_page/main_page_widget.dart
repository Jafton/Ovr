import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      child: custom_widgets.BottomNavBar(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        type: FFAppState().velocityOrJump,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xF8121B26),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().pageIndex = 0;
                          });
                        },
                        child: Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: FFAppState().pageIndex == 0
                                ? FlutterFlowTheme.of(context).btnDefault
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Icon(
                            FFIcons.kchart,
                            color: FFAppState().pageIndex == 0
                                ? FlutterFlowTheme.of(context).txtText1
                                : FlutterFlowTheme.of(context).txtText2,
                            size: 24.0,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().pageIndex = 1;
                          });
                        },
                        child: Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: FFAppState().pageIndex == 1
                                ? FlutterFlowTheme.of(context).btnDefault
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Icon(
                            FFIcons.kweight,
                            color: valueOrDefault<Color>(
                              FFAppState().pageIndex == 1
                                  ? FlutterFlowTheme.of(context).txtText1
                                  : FlutterFlowTheme.of(context).txtText2,
                              FlutterFlowTheme.of(context).txtText2,
                            ),
                            size: 24.0,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().pageIndex = 2;
                          });
                        },
                        child: Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: FFAppState().pageIndex == 2
                                ? FlutterFlowTheme.of(context).btnDefault
                                : Color(0xF1121B26),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Icon(
                            FFIcons.kuser,
                            color: valueOrDefault<Color>(
                              FFAppState().pageIndex == 2
                                  ? FlutterFlowTheme.of(context).txtText1
                                  : FlutterFlowTheme.of(context).txtText2,
                              FlutterFlowTheme.of(context).txtText2,
                            ),
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
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
