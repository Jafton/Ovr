import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/error_dialog/error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_deletion_model.dart';
export 'confirm_deletion_model.dart';

class ConfirmDeletionWidget extends StatefulWidget {
  const ConfirmDeletionWidget({
    Key? key,
    this.password,
  }) : super(key: key);

  final String? password;

  @override
  _ConfirmDeletionWidgetState createState() => _ConfirmDeletionWidgetState();
}

class _ConfirmDeletionWidgetState extends State<ConfirmDeletionWidget> {
  late ConfirmDeletionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmDeletionModel());
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
      width: 290.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgBg5,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 1.0),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Delete account',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 16.0),
                  child: Text(
                    'Are your sure you want to delete account?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'SF Pro Display',
                          color: FlutterFlowTheme.of(context).txtText2,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                builder: (context) => FFButtonWidget(
                  onPressed: () async {
                    _model.result = await actions.authorization(
                      currentUserEmail,
                      widget.password!,
                    );
                    if (_model.result!) {
                      await authManager.deleteUser(context);

                      context.goNamed('SignUp');
                    } else {
                      await showAlignedDialog(
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
                            child: ErrorDialogWidget(
                              text:
                                  'The current password you entered is incorrect.',
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));

                      Navigator.pop(context);
                    }

                    setState(() {});
                  },
                  text: 'Delete',
                  options: FFButtonOptions(
                    width: 130.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).bgBg5,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: FlutterFlowTheme.of(context).redNo,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              Container(
                width: 1.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: 130.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).bgBg5,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
