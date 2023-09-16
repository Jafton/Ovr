import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'weight_page_model.dart';
export 'weight_page_model.dart';

class WeightPageWidget extends StatefulWidget {
  const WeightPageWidget({Key? key}) : super(key: key);

  @override
  _WeightPageWidgetState createState() => _WeightPageWidgetState();
}

class _WeightPageWidgetState extends State<WeightPageWidget> {
  late WeightPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeightPageModel());
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
        backgroundColor: Color(0xFF182433),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).bgBg4,
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
                fillColor: FlutterFlowTheme.of(context).bgStroke,
                icon: Icon(
                  FFIcons.karrowLeft,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.safePop();
                  setState(() {
                    FFAppState().weightUnit = 'lbs';
                  });
                },
              ),
              Text(
                'CHANGE\nWEIGHT',
                textAlign: TextAlign.end,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Bicyclette',
                      fontWeight: FontWeight.w900,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.85,
                decoration: BoxDecoration(
                  color: Color(0xFF182433),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Text(
                                    'PERSONAL INFO',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                ),
                                Text(
                                  'What’s your weight?',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SF Pro Display',
                                        color: FlutterFlowTheme.of(context)
                                            .txtText2,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/weightbody.png',
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 235.0,
                        height: 60.0,
                        child: custom_widgets.Weight(
                          width: 235.0,
                          height: 60.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Frame_113.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF1F2F42),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: (valueOrDefault(
                                                currentUserDocument?.userWeight,
                                                '') ==
                                            null ||
                                        valueOrDefault(
                                                currentUserDocument?.userWeight,
                                                '') ==
                                            '') ||
                                    (valueOrDefault(
                                                currentUserDocument
                                                    ?.userWeightUnit,
                                                '') ==
                                            null ||
                                        valueOrDefault(
                                                currentUserDocument
                                                    ?.userWeightUnit,
                                                '') ==
                                            '')
                                ? null
                                : () async {
                                    await currentUserReference!
                                        .update(createUserRecordData(
                                      userWeight: FFAppState().weight,
                                      userWeightUnit: FFAppState().weightUnit,
                                    ));
                                    setState(() {
                                      FFAppState().weight = '180';
                                      FFAppState().weightUnit = 'lbs';
                                    });
                                    context.safePop();
                                  },
                            text: 'CONFIRM',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).btnDefault,
                              textStyle:
                                  FlutterFlowTheme.of(context).titleMedium,
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor:
                                  FlutterFlowTheme.of(context).bgStroke,
                              disabledTextColor:
                                  FlutterFlowTheme.of(context).txtText2,
                            ),
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
