import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sort_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/main_page/exercise/exercise_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_exercise_model.dart';
export 'edit_exercise_model.dart';

class EditExerciseWidget extends StatefulWidget {
  const EditExerciseWidget({Key? key}) : super(key: key);

  @override
  _EditExerciseWidgetState createState() => _EditExerciseWidgetState();
}

class _EditExerciseWidgetState extends State<EditExerciseWidget> {
  late EditExerciseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditExerciseModel());
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.00, 1.00),
              child: StreamBuilder<List<ExerciseRecord>>(
                stream: queryExerciseRecord(
                  queryBuilder: (exerciseRecord) => exerciseRecord
                      .where('exercise_owner', isEqualTo: currentUserReference)
                      .where('exercise_type', isEqualTo: 'velocity'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<ExerciseRecord> containerExerciseRecordList =
                      snapshot.data!;
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.93,
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 30.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.11,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.05,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .bgBg2,
                                          borderRadius: 10.0,
                                          borderWidth: 1.0,
                                          buttonSize: 44.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .bgBg2,
                                          icon: Icon(
                                            FFIcons.kclose,
                                            color: FlutterFlowTheme.of(context)
                                                .txtText2,
                                            size: 20.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                            setState(() {
                                              FFAppState().isExerciseEditing =
                                                  false;
                                            });
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.11,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.05,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                borderRadius: 10.0,
                                                borderWidth: 1.0,
                                                buttonSize: 44.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                icon: Icon(
                                                  FFIcons.kaddSquare,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText2,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                      'NewExercisePage');
                                                },
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.11,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .bgBg2,
                                              borderRadius: 10.0,
                                              borderWidth: 1.0,
                                              buttonSize: 44.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .bgBg2,
                                              icon: Icon(
                                                FFIcons.ksort,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .txtText2,
                                                size: 20.0,
                                              ),
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => FocusScope
                                                              .of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SortBottomSheetWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final exercise = functions
                                      .sortFunction(
                                          containerExerciseRecordList.toList(),
                                          FFAppState().sortState)
                                      .toList();
                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 2;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 3;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 3;
                                        } else {
                                          return 2;
                                        }
                                      }(),
                                      crossAxisSpacing: 16.0,
                                      mainAxisSpacing: 16.0,
                                      childAspectRatio:
                                          MediaQuery.sizeOf(context).width <
                                                  430.0
                                              ? 1.0
                                              : 1.5,
                                    ),
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: exercise.length,
                                    itemBuilder: (context, exerciseIndex) {
                                      final exerciseItem =
                                          exercise[exerciseIndex];
                                      return ExerciseWidget(
                                        key: Key(
                                            'Keye0f_${exerciseIndex}_of_${exercise.length}'),
                                        exerciseRef: exerciseItem.reference,
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
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
