import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'velocity_device_model.dart';
export 'velocity_device_model.dart';

class VelocityDeviceWidget extends StatefulWidget {
  const VelocityDeviceWidget({
    Key? key,
    this.isConnected,
  }) : super(key: key);

  final bool? isConnected;

  @override
  _VelocityDeviceWidgetState createState() => _VelocityDeviceWidgetState();
}

class _VelocityDeviceWidgetState extends State<VelocityDeviceWidget> {
  late VelocityDeviceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VelocityDeviceModel());
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
                'assets/images/Gravity_Box_Render_No_Background_1.png',
                height: 72.0,
                fit: BoxFit.contain,
              ),
            ),
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
                      fontSize: MediaQuery.sizeOf(context).width < 430.0
                          ? 12.0
                          : 14.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            if (widget.isConnected == null)
              Text(
                'Not connected',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'SF Pro Display',
                      color: FlutterFlowTheme.of(context).redNo,
                      fontSize: MediaQuery.sizeOf(context).width < 430.0
                          ? 12.0
                          : 14.0,
                      useGoogleFonts: false,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
