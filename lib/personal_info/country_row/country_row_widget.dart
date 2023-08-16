import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'country_row_model.dart';
export 'country_row_model.dart';

class CountryRowWidget extends StatefulWidget {
  const CountryRowWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
    required this.parameter3,
  }) : super(key: key);

  final dynamic parameter1;
  final dynamic parameter2;
  final dynamic parameter3;

  @override
  _CountryRowWidgetState createState() => _CountryRowWidgetState();
}

class _CountryRowWidgetState extends State<CountryRowWidget> {
  late CountryRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryRowModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${widget.parameter1 != null ? widget.parameter1?.toString() : ' '} ${widget.parameter2?.toString()}',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'SF Pro Display',
                  color: FlutterFlowTheme.of(context).txtText2,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
