import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'error_dialog_model.dart';
export 'error_dialog_model.dart';

class ErrorDialogWidget extends StatefulWidget {
  const ErrorDialogWidget({
    Key? key,
    String? text,
  })  : this.text = text ?? 'error',
        super(key: key);

  final String text;

  @override
  _ErrorDialogWidgetState createState() => _ErrorDialogWidgetState();
}

class _ErrorDialogWidgetState extends State<ErrorDialogWidget> {
  late ErrorDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorDialogModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFF182433),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.text,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).redNo,
                        useGoogleFonts: false,
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
                },
                child: Icon(
                  FFIcons.kclose,
                  color: FlutterFlowTheme.of(context).txtText2,
                  size: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
