import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/view_data/set_exact_rep_data/set_exact_rep_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exact_rep_data_model.dart';
export 'exact_rep_data_model.dart';

class ExactRepDataWidget extends StatefulWidget {
  const ExactRepDataWidget({
    Key? key,
    this.exerciseName,
    this.date,
    this.setDocuments,
  }) : super(key: key);

  final String? exerciseName;
  final DateTime? date;
  final List<SetRecord>? setDocuments;

  @override
  _ExactRepDataWidgetState createState() => _ExactRepDataWidgetState();
}

class _ExactRepDataWidgetState extends State<ExactRepDataWidget> {
  late ExactRepDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExactRepDataModel());
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
        body: Align(
          alignment: AlignmentDirectional(0.00, 1.00),
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.95,
            decoration: BoxDecoration(
              color: Color(0xFF182433),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).bgBg2,
                          borderRadius: 10.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).bgBg2,
                          icon: Icon(
                            FFIcons.kclose,
                            color: FlutterFlowTheme.of(context).txtText2,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.exerciseName!.toUpperCase(),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Bicyclette',
                                    fontSize:
                                        MediaQuery.sizeOf(context).width < 430.0
                                            ? 24.0
                                            : 36.0,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              '${dateTimeFormat(
                                'dd',
                                widget.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )} ${dateTimeFormat(
                                'MMM',
                                widget.date,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color:
                                        FlutterFlowTheme.of(context).txtText2,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Builder(
                      builder: (context) {
                        final set = widget.setDocuments?.toList() ?? [];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(set.length, (setIndex) {
                            final setItem = set[setIndex];
                            return SetExactRepDataWidget(
                              key: Key('Keygq8_${setIndex}_of_${set.length}'),
                              parameter1: setIndex,
                              parameter4: setItem.setListOfRep.length,
                              setDoc: setItem,
                              exerciseName: widget.exerciseName,
                            );
                          }),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
