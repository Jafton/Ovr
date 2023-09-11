import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_in_video_recording_model.dart';
export 'data_in_video_recording_model.dart';

class DataInVideoRecordingWidget extends StatefulWidget {
  const DataInVideoRecordingWidget({
    Key? key,
    String? num,
    String? unit,
  })  : this.num = num ?? '0',
        this.unit = unit ?? 'm/s',
        super(key: key);

  final String num;
  final String unit;

  @override
  _DataInVideoRecordingWidgetState createState() =>
      _DataInVideoRecordingWidgetState();
}

class _DataInVideoRecordingWidgetState
    extends State<DataInVideoRecordingWidget> {
  late DataInVideoRecordingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataInVideoRecordingModel());
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
      width: valueOrDefault<double>(
        MediaQuery.sizeOf(context).width < 430.0 ? 68.0 : 114.0,
        68.0,
      ),
      height: valueOrDefault<double>(
        MediaQuery.sizeOf(context).width < 430.0 ? 58.0 : 86.0,
        58.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xB20E161E),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 6.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.num,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).primary,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
            Text(
              widget.unit,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).txtText2,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
