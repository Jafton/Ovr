import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sort_bottom_sheet_model.dart';
export 'sort_bottom_sheet_model.dart';

class SortBottomSheetWidget extends StatefulWidget {
  const SortBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _SortBottomSheetWidgetState createState() => _SortBottomSheetWidgetState();
}

class _SortBottomSheetWidgetState extends State<SortBottomSheetWidget> {
  late SortBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortBottomSheetModel());
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  'Sort By',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: FlutterFlowRadioButton(
                options: [
                  'Name: a-z',
                  'Name: z-a',
                  'Most popular',
                  'Least popular'
                ].toList(),
                onChanged: (val) => setState(() {}),
                controller: _model.radioButtonValueController ??=
                    FormFieldController<String>(FFAppState().sortState),
                optionHeight: 32.0,
                textStyle: FlutterFlowTheme.of(context).labelMedium,
                selectedTextStyle: FlutterFlowTheme.of(context).titleMedium,
                buttonPosition: RadioButtonPosition.left,
                direction: Axis.vertical,
                radioButtonColor: FlutterFlowTheme.of(context).primary,
                inactiveRadioButtonColor:
                    FlutterFlowTheme.of(context).secondaryText,
                toggleable: false,
                horizontalAlignment: WrapAlignment.start,
                verticalAlignment: WrapCrossAlignment.start,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                if (_model.radioButtonValue != FFAppState().sortState) {
                  setState(() {
                    FFAppState().sortState = _model.radioButtonValue!;
                  });
                }
                Navigator.pop(context);
              },
              text: 'APPLY',
              options: FFButtonOptions(
                width: double.infinity,
                height: 55.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).btnDefault,
                textStyle: FlutterFlowTheme.of(context).titleMedium,
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
