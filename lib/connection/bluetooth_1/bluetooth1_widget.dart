import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bluetooth1_model.dart';
export 'bluetooth1_model.dart';

class Bluetooth1Widget extends StatefulWidget {
  const Bluetooth1Widget({Key? key}) : super(key: key);

  @override
  _Bluetooth1WidgetState createState() => _Bluetooth1WidgetState();
}

class _Bluetooth1WidgetState extends State<Bluetooth1Widget> {
  late Bluetooth1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Bluetooth1Model());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/bluetooth.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x9A121B26),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 10.0),
                          child: Icon(
                            FFIcons.karrowLeft,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Text(
                        'SEARCHING',
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
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        decoration: BoxDecoration(
                          color: Color(0x9A121B26),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 10.0),
                          child: Icon(
                            FFIcons.kconnection,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg5,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                    child: Container(
                      width: 295.0,
                      height: 230.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bgBg,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/animation.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.contain,
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
    );
  }
}
