import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/live_data/data_in_video_recording/data_in_video_recording_widget.dart';
import '/velocity/live_data/return_to_homepage/return_to_homepage_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video_recording_model.dart';
export 'video_recording_model.dart';

class VideoRecordingWidget extends StatefulWidget {
  const VideoRecordingWidget({Key? key}) : super(key: key);

  @override
  _VideoRecordingWidgetState createState() => _VideoRecordingWidgetState();
}

class _VideoRecordingWidgetState extends State<VideoRecordingWidget> {
  late VideoRecordingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoRecordingModel());
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
          backgroundColor: FlutterFlowTheme.of(context).txtText3,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
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
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ReturnToHomepageWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Container(
                                width: 52.0,
                                height: 52.0,
                                decoration: BoxDecoration(
                                  color: Color(0xB20E161E),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  FFIcons.karrowLeft,
                                  color: FlutterFlowTheme.of(context).txtText1,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            if (FFAppState().velocityOrJump == 'Velocity')
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/OVR_VELOCITY_(app).png',
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.03,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (FFAppState().velocityOrJump != 'Velocity')
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/OVR_JUMP_(app).png',
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.03,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (true)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/stop.png',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (true)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 10.0,
                                borderWidth: 0.0,
                                buttonSize: 52.0,
                                fillColor: Color(0xB20E161E),
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.35,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (true)
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .dataInVideoRecordingModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DataInVideoRecordingWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .dataInVideoRecordingModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DataInVideoRecordingWidget(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .dataInVideoRecordingModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DataInVideoRecordingWidget(),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Container(
                                              width: 152.0,
                                              height: 152.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xB20E161E),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Color(0xFF26BAE5),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    FFAppState()
                                                        .listOfReps
                                                        .last
                                                        .repVelocity,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displayLarge
                                                        .override(
                                                          fontFamily: 'Lulo',
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    'm/s',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 58.0,
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .dataInVideoRecordingModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DataInVideoRecordingWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .dataInVideoRecordingModel5,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DataInVideoRecordingWidget(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              if (true)
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 52.0,
                                        decoration: BoxDecoration(),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/start.png',
                                          width: 96.0,
                                          height: 96.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderRadius: 10.0,
                                        borderWidth: 0.0,
                                        buttonSize: 52.0,
                                        fillColor: Color(0xB20E161E),
                                        icon: Icon(
                                          FFIcons.kflip1,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
