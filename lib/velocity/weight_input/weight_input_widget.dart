import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/num_pad/num_pad_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'weight_input_model.dart';
export 'weight_input_model.dart';

class WeightInputWidget extends StatefulWidget {
  const WeightInputWidget({
    Key? key,
    this.exerciseName,
    this.exerciseRef,
  }) : super(key: key);

  final String? exerciseName;
  final DocumentReference? exerciseRef;

  @override
  _WeightInputWidgetState createState() => _WeightInputWidgetState();
}

class _WeightInputWidgetState extends State<WeightInputWidget> {
  late WeightInputModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeightInputModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).bgBg2,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, -1.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 10.0,
                        borderWidth: 1.0,
                        buttonSize: 52.0,
                        fillColor: FlutterFlowTheme.of(context).bgBg4,
                        icon: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                          setState(() {
                            FFAppState().setGoal = '';
                            FFAppState().weightSelection = '';
                          });
                        },
                      ),
                      Text(
                        'SELECT WEIGHT\nAND GOAL',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Lulo',
                              fontSize: MediaQuery.sizeOf(context).width < 430.0
                                  ? 24.0
                                  : 36.0,
                              fontWeight: FontWeight.w900,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                  wrapWithModel(
                    model: _model.numPadModel,
                    updateCallback: () => setState(() {}),
                    child: NumPadWidget(
                      parameter1: widget.exerciseName,
                      parameter2: widget.exerciseRef,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
