import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/icon/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_icon_model.dart';
export 'edit_icon_model.dart';

class EditIconWidget extends StatefulWidget {
  const EditIconWidget({Key? key}) : super(key: key);

  @override
  _EditIconWidgetState createState() => _EditIconWidgetState();
}

class _EditIconWidgetState extends State<EditIconWidget> {
  late EditIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditIconModel());
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final icons = FFAppState().iconSelection.toList();
                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 2;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 3;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 3;
                          } else {
                            return 3;
                          }
                        }(),
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio:
                            MediaQuery.sizeOf(context).width < 430.0
                                ? 1.0
                                : 1.5,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: icons.length,
                      itemBuilder: (context, iconsIndex) {
                        final iconsItem = icons[iconsIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              FFAppState().iconSelected = iconsItem;
                            });
                            Navigator.pop(context);
                          },
                          child: IconWidget(
                            key: Key('Keyim5_${iconsIndex}_of_${icons.length}'),
                            icon: iconsItem,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
