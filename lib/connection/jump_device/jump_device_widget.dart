import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'jump_device_model.dart';
export 'jump_device_model.dart';

class JumpDeviceWidget extends StatefulWidget {
  const JumpDeviceWidget({
    Key? key,
    this.isConnected,
  }) : super(key: key);

  final bool? isConnected;

  @override
  _JumpDeviceWidgetState createState() => _JumpDeviceWidgetState();
}

class _JumpDeviceWidgetState extends State<JumpDeviceWidget> {
  late JumpDeviceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JumpDeviceModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgBg,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Gravity_Box_Render_No_Background_2.png',
                height: 72.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              'GB-3CF9',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
            if ((widget.isConnected != null) && (widget.isConnected == true))
              Text(
                'Connected',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).greenYes,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            if ((widget.isConnected != null) && (widget.isConnected == false))
              Text(
                'Not connected',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).redNo,
                      useGoogleFonts: false,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
