import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ovr_velocity_grid_model.dart';
export 'ovr_velocity_grid_model.dart';

class OvrVelocityGridWidget extends StatefulWidget {
  const OvrVelocityGridWidget({Key? key}) : super(key: key);

  @override
  _OvrVelocityGridWidgetState createState() => _OvrVelocityGridWidgetState();
}

class _OvrVelocityGridWidgetState extends State<OvrVelocityGridWidget> {
  late OvrVelocityGridModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OvrVelocityGridModel());
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
        color: FlutterFlowTheme.of(context).bgBg5,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/OVR_VELOCITY_(app).png',
                    width: MediaQuery.sizeOf(context).width * 0.52,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_1.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontSize:
                                        MediaQuery.sizeOf(context).width < 430.0
                                            ? 12.0
                                            : 14.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    fontSize:
                                        MediaQuery.sizeOf(context).width < 430.0
                                            ? 12.0
                                            : 14.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_1.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_1.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/OVR_JUMP_(app).png',
                    width: MediaQuery.sizeOf(context).width * 0.36,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 17.0,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_2.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 17.0,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_2.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 17.0,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Gravity_Box_Render_No_Background_1.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'GB-3CF9',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).greenYes,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'Not connected',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: FlutterFlowTheme.of(context).redNo,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'DEVICE SEARCH',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgStroke,
                  textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Bicyclette',
                        color: FlutterFlowTheme.of(context).txtText2,
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
        ),
      ),
    );
  }
}
