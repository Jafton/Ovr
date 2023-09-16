import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_time_picker_model.dart';
export 'date_time_picker_model.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({Key? key}) : super(key: key);

  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  late DateTimePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateTimePickerModel());
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
        color: FlutterFlowTheme.of(context).bgBg4,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Text(
              dateTimeFormat(
                'yMd',
                FFAppState().dateOfBirth,
                locale: FFLocalizations.of(context).languageCode,
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).btnDefault,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 52.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: custom_widgets.CupertionDateTime(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.2,
                time: getCurrentTimestamp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
