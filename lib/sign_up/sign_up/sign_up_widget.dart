import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    _model.usernameController ??= TextEditingController();
    _model.emailFieldController ??= TextEditingController();
    _model.passwordFieldController ??= TextEditingController();
    _model.confirmController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<UserRecord>>(
      stream: queryUserRecord(
        queryBuilder: (userRecord) => userRecord.where('email',
            isEqualTo: _model.emailFieldController.text),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserRecord> signUpUserRecordList = snapshot.data!;
        final signUpUserRecord =
            signUpUserRecordList.isNotEmpty ? signUpUserRecordList.first : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/PERSONAL_INFO.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().isCorrectEmail = false;
                                        FFAppState().isEmaillExist = false;
                                        FFAppState().isCorrectPassword = false;
                                        FFAppState().isCurrentPasswordCorrect =
                                            false;
                                        FFAppState().isCorrectUsername = false;
                                      });

                                      context.goNamed(
                                        'GetStarted',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x9A121B26),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 10.0, 16.0, 10.0),
                                        child: Icon(
                                          FFIcons.karrowLeft,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/ovr-logo.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00121B26),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 40.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).bgBg5,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            'TRAINING. SMARTER. ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Lulo',
                                                  fontSize: 24.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.usernameController,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.usernameController',
                                                  Duration(milliseconds: 100),
                                                  () => setState(() {}),
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Username',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText4,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 14.0
                                                            : 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  errorStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText2,
                                                        useGoogleFonts: false,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectUsername
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectUsername
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  prefixIcon: Icon(
                                                    FFIcons.kuserWithTick,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                validator: _model
                                                    .usernameControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            if ((functions.validatorPassHasMinLength(
                                                        _model
                                                            .usernameController
                                                            .text,
                                                        4) &&
                                                    (_model.usernameController
                                                                .text !=
                                                            null &&
                                                        _model.usernameController
                                                                .text !=
                                                            '')) ||
                                                (functions.validatorPassHasMaxLength(
                                                        _model
                                                            .usernameController
                                                            .text,
                                                        16) &&
                                                    (_model.usernameController
                                                                .text !=
                                                            null &&
                                                        _model.usernameController
                                                                .text !=
                                                            '')))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Text(
                                                  'Username should be between 4-16 characters long',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.emailFieldController,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.emailFieldController',
                                                  Duration(milliseconds: 10),
                                                  () => setState(() {}),
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText4,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 14.0
                                                            : 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                                  .isCorrectEmail ||
                                                              FFAppState()
                                                                  .isEmaillExist
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                                  .isCorrectEmail ||
                                                              FFAppState()
                                                                  .isEmaillExist
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  prefixIcon: Icon(
                                                    FFIcons.ksms,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                validator: _model
                                                    .emailFieldControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordFieldController,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.passwordFieldController',
                                                  Duration(milliseconds: 10),
                                                  () => setState(() {}),
                                                ),
                                                obscureText: !_model
                                                    .passwordFieldVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText4,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 14.0
                                                            : 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectPassword
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectPassword
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  prefixIcon: Icon(
                                                    FFIcons.klock,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordFieldVisibility =
                                                          !_model
                                                              .passwordFieldVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordFieldVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .txtText4,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                validator: _model
                                                    .passwordFieldControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp('^.{1,64}'))
                                                ],
                                              ),
                                            ),
                                            if ((functions.validatorPassHasMinLength(_model.passwordFieldController.text, 8) && (_model.passwordFieldController.text != null && _model.passwordFieldController.text != '')) ||
                                                (functions.validatorPassHasLowercase(_model.passwordFieldController.text) &&
                                                    (_model.passwordFieldController.text != null &&
                                                        _model.passwordFieldController.text !=
                                                            '')) ||
                                                (functions.validatorPassHasDigits(_model.passwordFieldController.text) &&
                                                    (_model.passwordFieldController.text != null &&
                                                        _model.passwordFieldController.text !=
                                                            '')) ||
                                                (functions.validatorPassHasUppercase(_model.passwordFieldController.text) &&
                                                    (_model.passwordFieldController.text != null &&
                                                        _model.passwordFieldController.text !=
                                                            '')) ||
                                                (functions.validatorPassHasMaxLength(
                                                        _model
                                                            .passwordFieldController
                                                            .text,
                                                        64) &&
                                                    (_model.passwordFieldController.text !=
                                                            null &&
                                                        _model.passwordFieldController.text != '')))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Password must contain:',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'SF Pro Display',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                    ),
                                                    if (functions
                                                        .validatorPassHasLowercase(
                                                            _model
                                                                .passwordFieldController
                                                                .text))
                                                      Text(
                                                        '・a lowercase letter',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    if (functions
                                                        .validatorPassHasUppercase(
                                                            _model
                                                                .passwordFieldController
                                                                .text))
                                                      Text(
                                                        '・an uppercase letter',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    if (functions
                                                        .validatorPassHasDigits(
                                                            _model
                                                                .passwordFieldController
                                                                .text))
                                                      Text(
                                                        '・a digit',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    if (functions
                                                        .validatorPassHasMinLength(
                                                            _model
                                                                .passwordFieldController
                                                                .text,
                                                            8))
                                                      Text(
                                                        '・at least 8 characters',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SF Pro Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.confirmController,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.confirmController',
                                                  Duration(milliseconds: 10),
                                                  () => setState(() {}),
                                                ),
                                                obscureText:
                                                    !_model.confirmVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Confirm Password',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .txtText4,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                430.0
                                                            ? 14.0
                                                            : 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectPassword
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FFAppState()
                                                              .isCorrectPassword
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .redNo
                                                          : Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bgBg2,
                                                  prefixIcon: Icon(
                                                    FFIcons.klock,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .confirmVisibility =
                                                          !_model
                                                              .confirmVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.confirmVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .txtText4,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                validator: _model
                                                    .confirmControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp('^.{1,64}'))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: (_model.usernameController.text == null || _model.usernameController.text == '') ||
                                                  (_model.emailFieldController.text == null ||
                                                      _model.emailFieldController.text ==
                                                          '') ||
                                                  (_model.passwordFieldController.text == null ||
                                                      _model.passwordFieldController.text ==
                                                          '') ||
                                                  (_model.confirmController.text == null ||
                                                      _model.confirmController.text ==
                                                          '') ||
                                                  (functions.validatorPassHasUppercase(_model.passwordFieldController.text) ||
                                                      functions.validatorPassHasLowercase(_model
                                                          .passwordFieldController
                                                          .text) ||
                                                      functions.validatorPassHasDigits(_model
                                                          .passwordFieldController
                                                          .text) ||
                                                      functions.validatorPassHasMinLength(
                                                          _model
                                                              .passwordFieldController
                                                              .text,
                                                          8)) ||
                                                  (functions.validatorPassHasMaxLength(_model.usernameController.text, 16) ||
                                                      functions.validatorPassHasMinLength(_model.usernameController.text, 4))
                                              ? null
                                              : () async {
                                                  if (signUpUserRecord !=
                                                      null) {
                                                    showAlignedDialog(
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      isGlobal: true,
                                                      avoidOverflow: false,
                                                      targetAnchor:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      followerAnchor:
                                                          AlignmentDirectional(
                                                                  0.0, -1.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      builder: (dialogContext) {
                                                        return Material(
                                                          color: Colors
                                                              .transparent,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => FocusScope
                                                                    .of(context)
                                                                .requestFocus(_model
                                                                    .unfocusNode),
                                                            child:
                                                                ErrorDialogWidget(
                                                              text:
                                                                  'The email address is already associated with an existing account.',
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {
                                                      FFAppState()
                                                              .isCorrectEmail =
                                                          false;
                                                      FFAppState()
                                                          .isEmaillExist = true;
                                                    });
                                                  } else {
                                                    if (_model
                                                            .passwordFieldController
                                                            .text ==
                                                        _model.confirmController
                                                            .text) {
                                                      setState(() {
                                                        FFAppState()
                                                                .isCorrectPassword =
                                                            false;
                                                        FFAppState()
                                                                .isCorrectEmail =
                                                            false;
                                                        FFAppState()
                                                                .isEmaillExist =
                                                            false;
                                                      });
                                                      _model.username =
                                                          await actions
                                                              .checkUsernameAvailability(
                                                        _model
                                                            .usernameController
                                                            .text,
                                                      );
                                                      if (_model.username!) {
                                                        setState(() {
                                                          FFAppState()
                                                                  .isCorrectUsername =
                                                              false;
                                                        });
                                                        if (functions
                                                            .checkForDots(_model
                                                                .usernameController
                                                                .text)) {
                                                          setState(() {
                                                            FFAppState()
                                                                    .isCorrectUsername =
                                                                false;
                                                          });
                                                          if (functions
                                                              .isCorrectEmail(_model
                                                                  .emailFieldController
                                                                  .text)) {
                                                            setState(() {
                                                              FFAppState()
                                                                      .isCorrectEmail =
                                                                  false;
                                                            });
                                                            if ((_model.passwordFieldController
                                                                        .text ==
                                                                    _model
                                                                        .confirmController
                                                                        .text) &&
                                                                !functions.validatorPassHasDigits(_model
                                                                    .passwordFieldController
                                                                    .text) &&
                                                                !functions.validatorPassHasLowercase(
                                                                    _model
                                                                        .passwordFieldController
                                                                        .text) &&
                                                                !functions.validatorPassHasMinLength(
                                                                    _model
                                                                        .passwordFieldController
                                                                        .text,
                                                                    8) &&
                                                                !functions.validatorPassHasMaxLength(
                                                                    _model
                                                                        .passwordFieldController
                                                                        .text,
                                                                    64) &&
                                                                (_model.emailFieldController
                                                                            .text !=
                                                                        null &&
                                                                    _model.emailFieldController
                                                                            .text !=
                                                                        '')) {
                                                              GoRouter.of(
                                                                      context)
                                                                  .prepareAuthEvent();
                                                              if (_model
                                                                      .passwordFieldController
                                                                      .text !=
                                                                  _model
                                                                      .confirmController
                                                                      .text) {
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Passwords don\'t match!',
                                                                    ),
                                                                  ),
                                                                );
                                                                return;
                                                              }

                                                              final user =
                                                                  await authManager
                                                                      .createAccountWithEmail(
                                                                context,
                                                                _model
                                                                    .emailFieldController
                                                                    .text,
                                                                _model
                                                                    .passwordFieldController
                                                                    .text,
                                                              );
                                                              if (user ==
                                                                  null) {
                                                                return;
                                                              }

                                                              await UserRecord
                                                                  .collection
                                                                  .doc(user.uid)
                                                                  .update(
                                                                      createUserRecordData(
                                                                    email: _model
                                                                        .emailFieldController
                                                                        .text,
                                                                    username: _model
                                                                        .usernameController
                                                                        .text,
                                                                    createdTime:
                                                                        getCurrentTimestamp,
                                                                    userPassword:
                                                                        _model
                                                                            .confirmController
                                                                            .text,
                                                                    userVelocityOrJump:
                                                                        'velocity',
                                                                  ));

                                                              await actions
                                                                  .exerciseCreator(
                                                                currentUserReference!,
                                                                currentUserUid,
                                                              );
                                                              setState(() {
                                                                FFAppState()
                                                                        .isCorrectEmail =
                                                                    false;
                                                                FFAppState()
                                                                        .isEmaillExist =
                                                                    false;
                                                              });

                                                              context.goNamedAuth(
                                                                  'PersonalInfoPage',
                                                                  context
                                                                      .mounted);
                                                            }
                                                          } else {
                                                            showAlignedDialog(
                                                              barrierColor: Colors
                                                                  .transparent,
                                                              context: context,
                                                              isGlobal: true,
                                                              avoidOverflow:
                                                                  false,
                                                              targetAnchor:
                                                                  AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              followerAnchor:
                                                                  AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              builder:
                                                                  (dialogContext) {
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () => FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            _model.unfocusNode),
                                                                    child:
                                                                        ErrorDialogWidget(
                                                                      text:
                                                                          'Please enter a valid email address.',
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));

                                                            setState(() {
                                                              FFAppState()
                                                                      .isCorrectEmail =
                                                                  true;
                                                              FFAppState()
                                                                      .isEmaillExist =
                                                                  false;
                                                            });
                                                          }
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                    .isCorrectUsername =
                                                                true;
                                                          });
                                                          showAlignedDialog(
                                                            barrierColor: Colors
                                                                .transparent,
                                                            context: context,
                                                            isGlobal: true,
                                                            avoidOverflow:
                                                                false,
                                                            targetAnchor:
                                                                AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                            followerAnchor:
                                                                AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                            builder:
                                                                (dialogContext) {
                                                              return Material(
                                                                color: Colors
                                                                    .transparent,
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode),
                                                                  child:
                                                                      ErrorDialogWidget(
                                                                    text:
                                                                        'Username can contain letters, digits and no more than one period (.) in a row.',
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        }
                                                      } else {
                                                        setState(() {
                                                          FFAppState()
                                                                  .isCorrectUsername =
                                                              true;
                                                        });
                                                        showAlignedDialog(
                                                          barrierColor: Colors
                                                              .transparent,
                                                          context: context,
                                                          isGlobal: true,
                                                          avoidOverflow: false,
                                                          targetAnchor:
                                                              AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          followerAnchor:
                                                              AlignmentDirectional(
                                                                      0.0, -1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                          builder:
                                                              (dialogContext) {
                                                            return Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () => FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode),
                                                                child:
                                                                    ErrorDialogWidget(
                                                                  text:
                                                                      'This username is not available.',
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      }
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .isCorrectPassword =
                                                            true;
                                                        FFAppState()
                                                                .isCorrectEmail =
                                                            false;
                                                        FFAppState()
                                                                .isEmaillExist =
                                                            false;
                                                      });
                                                      showAlignedDialog(
                                                        barrierColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        isGlobal: true,
                                                        avoidOverflow: false,
                                                        targetAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        followerAnchor:
                                                            AlignmentDirectional(
                                                                    0.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        builder:
                                                            (dialogContext) {
                                                          return Material(
                                                            color: Colors
                                                                .transparent,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode),
                                                              child:
                                                                  ErrorDialogWidget(
                                                                text:
                                                                    'Passwords do not match.',
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    }
                                                  }

                                                  setState(() {});
                                                },
                                          text: 'CREATE ACCOUNT',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 55.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .btnDefault,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium,
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .bgStroke,
                                            disabledTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .txtText2,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: RichText(
                                          textScaleFactor:
                                              MediaQuery.of(context)
                                                  .textScaleFactor,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Already have account? ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .txtText2,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: 'Log In',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  430.0
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                mouseCursor:
                                                    SystemMouseCursors.click,
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .isCorrectEmail =
                                                              false;
                                                          FFAppState()
                                                                  .isEmaillExist =
                                                              false;
                                                        });

                                                        context
                                                            .goNamed('SignIn');
                                                      },
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              430.0
                                                          ? 14.0
                                                          : 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
