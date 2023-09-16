import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/velocity_or_jump/velocity_or_jump_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'jump_mode_selection_model.dart';
export 'jump_mode_selection_model.dart';

class JumpModeSelectionWidget extends StatefulWidget {
  const JumpModeSelectionWidget({Key? key}) : super(key: key);

  @override
  _JumpModeSelectionWidgetState createState() =>
      _JumpModeSelectionWidgetState();
}

class _JumpModeSelectionWidgetState extends State<JumpModeSelectionWidget> {
  late JumpModeSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JumpModeSelectionModel());
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).bgBg2,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).bgBg2,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
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
                          return GestureDetector(
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: VelocityOrJumpWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/OVR_JUMP_(app).png',
                            width: MediaQuery.sizeOf(context).width * 0.33,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Icon(
                            FFIcons.karrowDown,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 52.0,
                  fillColor: FlutterFlowTheme.of(context).bgBg4,
                  icon: Icon(
                    FFIcons.kconnection,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Bluetooth-1');
                  },
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).bgBg5,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 18.0, 14.0, 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sandbox Mode',
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          ),
                          Container(
                            width: 48.0,
                            height: 26.0,
                            child: custom_widgets.CustomSwitch(
                              width: 48.0,
                              height: 26.0,
                              state: '-',
                              docReference: '-',
                              setGoal: false,
                              boolOfSwitch: false,
                              jumpSandboxMode: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: Color(0xFF1E2E40),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().jumpSandboxMode) {
                          context.goNamed('VerticalJumpLiveData');
                        } else {
                          context.pushNamed(
                            'JumpExerciseSelection',
                            queryParameters: {
                              'exerciseType': serializeParam(
                                'Vertical Jump',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.18,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgBg5,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 14.0, 18.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Icon(
                                  FFIcons.kjump,
                                  color:
                                      FlutterFlowTheme.of(context).btnDefault,
                                  size: 40.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VERTICAL JUMP',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Bicyclette',
                                          fontWeight: FontWeight.w900,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'Jump Height',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().jumpSandboxMode) {
                          context.goNamed('RSILiveData');
                        } else {
                          context.pushNamed(
                            'JumpExerciseSelection',
                            queryParameters: {
                              'exerciseType': serializeParam(
                                'RSI Mode',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.18,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bgBg5,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 14.0, 18.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Icon(
                                  FFIcons.krsi,
                                  color:
                                      FlutterFlowTheme.of(context).btnDefault,
                                  size: 40.0,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'RSI MODE',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Bicyclette',
                                          fontWeight: FontWeight.w900,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'Reactive Strength Index',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState().jumpSandboxMode) {
                        context.goNamed('GCTLiveData');
                      } else {
                        context.pushNamed(
                          'JumpExerciseSelection',
                          queryParameters: {
                            'exerciseType': serializeParam(
                              'GCT Mode',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.18,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg5,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 18.0, 14.0, 18.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Icon(
                                FFIcons.kgct,
                                color: FlutterFlowTheme.of(context).btnDefault,
                                size: 40.0,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'GCT MODE',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Bicyclette',
                                        fontWeight: FontWeight.w900,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Text(
                                  'Ground Contact Time',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        useGoogleFonts: false,
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
            ),
          ),
        ),
      ),
    );
  }
}
