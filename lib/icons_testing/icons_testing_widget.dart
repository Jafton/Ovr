import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icons_testing_model.dart';
export 'icons_testing_model.dart';

class IconsTestingWidget extends StatefulWidget {
  const IconsTestingWidget({Key? key}) : super(key: key);

  @override
  _IconsTestingWidgetState createState() => _IconsTestingWidgetState();
}

class _IconsTestingWidgetState extends State<IconsTestingWidget> {
  late IconsTestingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconsTestingModel());
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Bicyclette',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Page Title',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Bicyclette',
                              color: Colors.white,
                              fontSize: 22.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kinstagram,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kyoutube,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kweight,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kweight1,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kvideo,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kuser,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ktbdeadlift,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ktagCross,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ksort,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kshoulderpress,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kshield,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kshare21,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ksetting,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ksetting2,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.ksearch,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.krsi,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kreverselunge,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kpowerclean,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kperson,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kpercentage,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kpercentage1,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kmaxP,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kmaxM,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.klogout,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.klock,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.klifter,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kjumps,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kjump,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kinch,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.khashtag,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.khashtagDown,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.khashtag1,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kgct,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kgallery,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kfrontsquat,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kforward,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kflip1,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kfilter,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kfatigue,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.keye,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.keyeSlash,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kemail,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kearth,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kedit2,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kdone,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kdoc,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kdelete,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kdeadlift,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcrown,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcreated,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kconnection,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kclose,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kchart,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcamera,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kbluetooth,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kbest,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kbenchpress,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kbacksquat,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kbackInTime1,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kavgP,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kavgM,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrow,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrowUp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrowRight,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrowLeft,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrowDown,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.karrowDown2,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kaddSquare,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kabout,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidSquare,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
