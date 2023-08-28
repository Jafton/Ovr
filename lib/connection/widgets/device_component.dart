import 'package:flutter/material.dart';
import 'package:ovr_performance/flutter_flow/flutter_flow_theme.dart';

class DeviceComponent extends StatefulWidget {
  final bool isVelocity;
  final bool isConnected;

  const DeviceComponent({
    Key? key,
    required this.isVelocity,
    required this.isConnected,
  }) : super(key: key);

  @override
  State<DeviceComponent> createState() => _DeviceComponentState();
}

class _DeviceComponentState extends State<DeviceComponent> {
  @override
  Widget build(BuildContext context) {
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
                widget.isVelocity ? 'assets/images/Gravity_Box_Render_No_Background_1.png' : 'assets/images/Gravity_Box_Render_No_Background_2.png',
                height: 100.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "widget",
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
            Text(
              widget.isConnected ? 'Connected' : 'Not connected',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).redNo,
                    fontSize: MediaQuery.sizeOf(context).width < 430.0 ? 12.0 : 14.0,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
