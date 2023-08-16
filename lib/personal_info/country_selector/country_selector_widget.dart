import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/personal_info/country_row/country_row_widget.dart';
import '/personal_info/state_selector/state_selector_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'country_selector_model.dart';
export 'country_selector_model.dart';

class CountrySelectorWidget extends StatefulWidget {
  const CountrySelectorWidget({
    Key? key,
    this.json,
  }) : super(key: key);

  final List<dynamic>? json;

  @override
  _CountrySelectorWidgetState createState() => _CountrySelectorWidgetState();
}

class _CountrySelectorWidgetState extends State<CountrySelectorWidget> {
  late CountrySelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountrySelectorModel());

    _model.usernameFieldController ??= TextEditingController();
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
      height: MediaQuery.sizeOf(context).height * 0.8,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: TextFormField(
                  controller: _model.usernameFieldController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.usernameFieldController',
                    Duration(milliseconds: 100),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Your country',
                    labelStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'SF Pro Display',
                          color: FlutterFlowTheme.of(context).txtText4,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).bgBg2,
                    prefixIcon: Icon(
                      FFIcons.ksearch,
                      color: FlutterFlowTheme.of(context).txtText4,
                      size: 20.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).txtText2,
                        fontSize: MediaQuery.sizeOf(context).width < 430.0
                            ? 14.0
                            : 16.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  validator: _model.usernameFieldControllerValidator
                      .asValidator(context),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).btnBtn,
              ),
              Builder(
                builder: (context) {
                  final uScanada =
                      functions.getPhoneNumberCountriesList()?.toList() ?? [];
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(uScanada.length, (uScanadaIndex) {
                        final uScanadaItem = uScanada[uScanadaIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().country = uScanadaItem;
                              });
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: StateSelectorWidget(),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    '${getJsonField(
                                      uScanadaItem,
                                      r'''$.flag''',
                                    ).toString()} ${getJsonField(
                                      uScanadaItem,
                                      r'''$.name.common''',
                                    ).toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'SF Pro Display',
                                          color: FlutterFlowTheme.of(context)
                                              .txtText2,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Icon(
                                  FFIcons.karrowRight,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final searchResult = functions
                      .searchCountry(widget.json!.toList(),
                          _model.usernameFieldController.text)
                      .toList();
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(searchResult.length,
                          (searchResultIndex) {
                        final searchResultItem =
                            searchResult[searchResultIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (getJsonField(
                                  searchResultItem,
                                  r'''$.flag''',
                                ) !=
                                null) {
                              setState(() {
                                FFAppState().country = searchResultItem;
                                FFAppState().state = null;
                              });
                              Navigator.pop(context);
                            }
                          },
                          child: CountryRowWidget(
                            key: Key(
                                'Key9l2_${searchResultIndex}_of_${searchResult.length}'),
                            parameter1: getJsonField(
                              searchResultItem,
                              r'''$.flag''',
                            ),
                            parameter2: getJsonField(
                              searchResultItem,
                              r'''$.name.common''',
                            ),
                            parameter3: searchResultItem,
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
