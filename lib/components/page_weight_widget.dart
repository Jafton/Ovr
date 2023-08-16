import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_weight_model.dart';
export 'page_weight_model.dart';

class PageWeightWidget extends StatefulWidget {
  const PageWeightWidget({Key? key}) : super(key: key);

  @override
  _PageWeightWidgetState createState() => _PageWeightWidgetState();
}

class _PageWeightWidgetState extends State<PageWeightWidget> {
  late PageWeightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageWeightModel());

    _model.weightController ??= TextEditingController(
        text: functions.removeLettersFromString(
            valueOrDefault(currentUserDocument?.userWeight, '')));
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
      width: MediaQuery.sizeOf(context).width * 0.9,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
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
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Text(
                          'What’s your weight?',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).txtText2,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/weightbody.png',
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AuthUserStreamWidget(
                builder: (context) => Container(
                  width: 163.0,
                  child: TextFormField(
                    controller: _model.weightController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: FlutterFlowTheme.of(context).displaySmall,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).bgBg2,
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    validator:
                        _model.weightControllerValidator.asValidator(context),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Frame_113.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1F2F42),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF1F2F42),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 6.0, 3.0, 6.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await currentUserReference!
                                    .update(createUserRecordData(
                                  userWeightUnit: 'lbs',
                                ));
                              },
                              child: Container(
                                width: 83.0,
                                height: 41.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault(
                                              currentUserDocument
                                                  ?.userWeightUnit,
                                              '') ==
                                          'lbs'
                                      ? FlutterFlowTheme.of(context).bgBg6
                                      : FlutterFlowTheme.of(context).bgBg2,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'lbs',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Bicyclette',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 6.0, 6.0, 6.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await currentUserReference!
                                    .update(createUserRecordData(
                                  userWeightUnit: 'kg',
                                ));
                              },
                              child: Container(
                                width: 83.0,
                                height: 41.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault(
                                              currentUserDocument
                                                  ?.userWeightUnit,
                                              '') ==
                                          'kg'
                                      ? FlutterFlowTheme.of(context).bgBg6
                                      : FlutterFlowTheme.of(context).bgBg2,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'kg',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Bicyclette',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: AuthUserStreamWidget(
                  builder: (context) => FFButtonWidget(
                    onPressed: (_model.weightController.text == null ||
                                _model.weightController.text == '') ||
                            (valueOrDefault(currentUserDocument?.userWeightUnit,
                                        '') ==
                                    null ||
                                valueOrDefault(
                                        currentUserDocument?.userWeightUnit,
                                        '') ==
                                    '')
                        ? null
                        : () async {
                            await currentUserReference!
                                .update(createUserRecordData(
                              userWeight:
                                  '${_model.weightController.text}${valueOrDefault(currentUserDocument?.userWeightUnit, '')}',
                            ));
                            Navigator.pop(context);
                          },
                    text: 'CONFIRM',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).btnDefault,
                      textStyle: FlutterFlowTheme.of(context).titleMedium,
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      disabledColor: FlutterFlowTheme.of(context).bgStroke,
                      disabledTextColor: FlutterFlowTheme.of(context).txtText2,
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
