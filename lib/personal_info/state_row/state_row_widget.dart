import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'state_row_model.dart';
export 'state_row_model.dart';

class StateRowWidget extends StatefulWidget {
  const StateRowWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
  }) : super(key: key);

  final dynamic parameter1;
  final dynamic parameter2;

  @override
  _StateRowWidgetState createState() => _StateRowWidgetState();
}

class _StateRowWidgetState extends State<StateRowWidget> {
  late StateRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StateRowModel());
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
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          setState(() {
            FFAppState().state = widget.parameter2!;
          });
          Navigator.pop(context);
          Navigator.pop(context);
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.parameter1!.toString(),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).txtText2,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
