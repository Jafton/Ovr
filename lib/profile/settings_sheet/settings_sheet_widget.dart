import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/settings/delete_account/delete_account_widget.dart';
import '/profile/settings/log_out/log_out_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_sheet_model.dart';
export 'settings_sheet_model.dart';

class SettingsSheetWidget extends StatefulWidget {
  const SettingsSheetWidget({Key? key}) : super(key: key);

  @override
  _SettingsSheetWidgetState createState() => _SettingsSheetWidgetState();
}

class _SettingsSheetWidgetState extends State<SettingsSheetWidget> {
  late SettingsSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsSheetModel());
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
        color: Color(0xFF182433),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
              child: Container(
                width: 50.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).bgBg6,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                  child: Icon(
                    FFIcons.kcreated,
                    color: FlutterFlowTheme.of(context).txtText2,
                    size: 20.0,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Date created',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'SF Pro Display',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                AuthUserStreamWidget(
                  builder: (context) => Text(
                    dateTimeFormat('d/M/y', currentUserDocument!.creationDate!),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'SF Pro Display',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                  child: Icon(
                    FFIcons.kemail,
                    color: FlutterFlowTheme.of(context).txtText2,
                    size: 20.0,
                  ),
                ),
                Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                ),
              ],
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ChangePasswordPage');

                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Icon(
                      FFIcons.klock,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Change password',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Icon(
                    FFIcons.karrowRight,
                    color: FlutterFlowTheme.of(context).txtText3,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('AboutUsPage');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Icon(
                      FFIcons.kabout,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'About Us',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Icon(
                    FFIcons.karrowRight,
                    color: FlutterFlowTheme.of(context).txtText3,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('TermsAndConditions');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Icon(
                      FFIcons.kdoc,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Terms & Conditions',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Icon(
                    FFIcons.karrowRight,
                    color: FlutterFlowTheme.of(context).txtText3,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('PrivacyPolicy');
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Icon(
                      FFIcons.kshield,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Privacy Policy',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Icon(
                    FFIcons.karrowRight,
                    color: FlutterFlowTheme.of(context).txtText3,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            Builder(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                  showAlignedDialog(
                    context: context,
                    isGlobal: true,
                    avoidOverflow: false,
                    targetAnchor: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    followerAnchor: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    builder: (dialogContext) {
                      return Material(
                        color: Colors.transparent,
                        child: LogOutWidget(),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                      child: Icon(
                        FFIcons.klogout,
                        color: FlutterFlowTheme.of(context).txtText2,
                        size: 20.0,
                      ),
                    ),
                    Text(
                      'Log out',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).redNo,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.pop(context);
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: DeleteAccountWidget(),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 16.0),
                    child: Icon(
                      FFIcons.kdelete,
                      color: FlutterFlowTheme.of(context).txtText2,
                      size: 20.0,
                    ),
                  ),
                  Text(
                    'Delete account',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'SF Pro Display',
                          color: FlutterFlowTheme.of(context).txtText4,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
