import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_password_page_model.dart';
export 'change_password_page_model.dart';

class ChangePasswordPageWidget extends StatefulWidget {
  const ChangePasswordPageWidget({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageWidgetState createState() =>
      _ChangePasswordPageWidgetState();
}

class _ChangePasswordPageWidgetState extends State<ChangePasswordPageWidget> {
  late ChangePasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordPageModel());

    _model.currentPasswordController ??= TextEditingController();
    _model.newPasswordController ??= TextEditingController();
    _model.confirmNewPasswordController ??= TextEditingController();
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bgBg,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                              onPressed: () async {
                                setState(() {
                                  FFAppState().isCorrectPassword = false;
                                  FFAppState().isCurrentPasswordCorrect = false;
                                });
                                context.safePop();
                              },
                            ),
                            Text(
                              'CHANGE\nPASSWORD',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Bicyclette',
                                    fontSize:
                                        MediaQuery.sizeOf(context).width < 430.0
                                            ? 24.0
                                            : 36.0,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xFF182433),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Text(
                                        'Change password',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'SF Pro Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .txtText1,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Your new password must be different from previous used passwords.',
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
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 10.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .currentPasswordController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.currentPasswordController',
                                                Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              obscureText: !_model
                                                  .currentPasswordVisibility,
                                              decoration: InputDecoration(
                                                labelText: 'Current password',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FFAppState()
                                                            .isCurrentPasswordCorrect
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
                                                            .isCurrentPasswordCorrect
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
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                    color: FlutterFlowTheme.of(
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
                                                    FlutterFlowTheme.of(context)
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
                                                            .currentPasswordVisibility =
                                                        !_model
                                                            .currentPasswordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.currentPasswordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText2,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            430.0
                                                        ? 14.0
                                                        : 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              validator: _model
                                                  .currentPasswordControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.newPasswordController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.newPasswordController',
                                                Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              obscureText:
                                                  !_model.newPasswordVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Create new password',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                    FlutterFlowTheme.of(context)
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
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                    color: FlutterFlowTheme.of(
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
                                                    FlutterFlowTheme.of(context)
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
                                                            .newPasswordVisibility =
                                                        !_model
                                                            .newPasswordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.newPasswordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText2,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            430.0
                                                        ? 14.0
                                                        : 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              validator: _model
                                                  .newPasswordControllerValidator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp('^.{1,64}'))
                                              ],
                                            ),
                                          ),
                                          if ((functions.validatorPassHasMaxLength(
                                                      _model
                                                          .newPasswordController
                                                          .text,
                                                      64) ||
                                                  functions.validatorPassHasLowercase(_model
                                                      .newPasswordController
                                                      .text) ||
                                                  functions.validatorPassHasDigits(
                                                      _model
                                                          .newPasswordController
                                                          .text) ||
                                                  functions.validatorPassHasMinLength(
                                                      _model
                                                          .newPasswordController
                                                          .text,
                                                      8) ||
                                                  functions.validatorPassHasUppercase(
                                                      _model
                                                          .newPasswordController
                                                          .text)) &&
                                              (_model.newPasswordController.text != null &&
                                                  _model.newPasswordController.text != ''))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Password must contain:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  if (functions
                                                      .validatorPassHasLowercase(
                                                          _model
                                                              .newPasswordController
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
                                                              .newPasswordController
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
                                                      .validatorPassHasDigits(_model
                                                          .newPasswordController
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
                                                              .newPasswordController
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .confirmNewPasswordController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.confirmNewPasswordController',
                                                Duration(milliseconds: 100),
                                                () => setState(() {}),
                                              ),
                                              obscureText: !_model
                                                  .confirmNewPasswordVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Confirm new password',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                    FlutterFlowTheme.of(context)
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
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
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
                                                    color: FlutterFlowTheme.of(
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
                                                    FlutterFlowTheme.of(context)
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
                                                            .confirmNewPasswordVisibility =
                                                        !_model
                                                            .confirmNewPasswordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.confirmNewPasswordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText4,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .txtText2,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            430.0
                                                        ? 14.0
                                                        : 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              validator: _model
                                                  .confirmNewPasswordControllerValidator
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
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: (_model.currentPasswordController.text == null || _model.currentPasswordController.text == '') ||
                                                  (_model.newPasswordController.text == null ||
                                                      _model.newPasswordController.text ==
                                                          '') ||
                                                  (_model.confirmNewPasswordController.text ==
                                                          null ||
                                                      _model.confirmNewPasswordController
                                                              .text ==
                                                          '') ||
                                                  (functions.validatorPassHasMaxLength(
                                                          _model
                                                              .newPasswordController
                                                              .text,
                                                          64) ||
                                                      functions.validatorPassHasLowercase(_model
                                                          .newPasswordController
                                                          .text) ||
                                                      functions.validatorPassHasDigits(_model
                                                          .newPasswordController
                                                          .text) ||
                                                      functions.validatorPassHasMinLength(
                                                          _model.newPasswordController.text, 8) ||
                                                      functions.validatorPassHasUppercase(_model.newPasswordController.text))
                                              ? null
                                              : () async {
                                                  if (_model
                                                          .currentPasswordController
                                                          .text ==
                                                      valueOrDefault(
                                                          currentUserDocument
                                                              ?.userPassword,
                                                          '')) {
                                                    setState(() {
                                                      FFAppState()
                                                              .isCorrectPassword =
                                                          false;
                                                      FFAppState()
                                                              .isCurrentPasswordCorrect =
                                                          false;
                                                    });
                                                    _model.result =
                                                        await actions.reAuth(
                                                      currentUserEmail,
                                                      _model
                                                          .currentPasswordController
                                                          .text,
                                                      currentUserEmail,
                                                    );
                                                    if (_model.result != null &&
                                                        _model.result != '') {
                                                      if (_model
                                                              .newPasswordController
                                                              .text ==
                                                          _model
                                                              .confirmNewPasswordController
                                                              .text) {
                                                        _model.result2 =
                                                            await actions
                                                                .resetUserPassword(
                                                          currentUserEmail,
                                                          _model
                                                              .currentPasswordController
                                                              .text,
                                                          _model
                                                              .confirmNewPasswordController
                                                              .text,
                                                        );
                                                        if (_model.result2!) {
                                                          await currentUserReference!
                                                              .update(
                                                                  createUserRecordData(
                                                            userPassword: _model
                                                                .confirmNewPasswordController
                                                                .text,
                                                          ));

                                                          context.goNamed(
                                                              'ForgotPassword');

                                                          setState(() {
                                                            FFAppState()
                                                                    .isCorrectPassword =
                                                                false;
                                                            FFAppState()
                                                                    .isCurrentPasswordCorrect =
                                                                false;
                                                          });
                                                        }
                                                      } else {
                                                        setState(() {
                                                          FFAppState()
                                                                  .isCorrectPassword =
                                                              true;
                                                          FFAppState()
                                                                  .isCurrentPasswordCorrect =
                                                              false;
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
                                                                      'Passwords do not match.',
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      }
                                                    }
                                                  } else {
                                                    setState(() {
                                                      FFAppState()
                                                              .isCorrectPassword =
                                                          false;
                                                      FFAppState()
                                                              .isCurrentPasswordCorrect =
                                                          true;
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
                                                                  'The current password you entered is incorrect.',
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  }

                                                  setState(() {});
                                                },
                                          text: 'CONTINUE',
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
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Bicyclette',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .txtText1,
                                                      useGoogleFonts: false,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
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
                                    ),
                                  ],
                                ),
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
  }
}
