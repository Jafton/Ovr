import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sort_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/velocity/edit_exercise/edit_exercise_widget.dart';
import '/velocity/exercise_copy/exercise_copy_widget.dart';
import '/velocity/velocity_or_jump/velocity_or_jump_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lift_selection_model.dart';
export 'lift_selection_model.dart';

class LiftSelectionWidget extends StatefulWidget {
  const LiftSelectionWidget({Key? key}) : super(key: key);

  @override
  _LiftSelectionWidgetState createState() => _LiftSelectionWidgetState();
}

class _LiftSelectionWidgetState extends State<LiftSelectionWidget> {
  late LiftSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LiftSelectionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ExerciseRecord>>(
      stream: queryExerciseRecord(
        queryBuilder: (exerciseRecord) => exerciseRecord
            .where('exercise_owner', isEqualTo: currentUserReference)
            .where('exercise_type', isEqualTo: 'velocity')
            .where('exercise_is_visible', isEqualTo: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).bgBg2,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ExerciseRecord> liftSelectionExerciseRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).bgBg2,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).bgBg2,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: VelocityOrJumpWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/OVR_VELOCITY_(app).png',
                              width: MediaQuery.sizeOf(context).width * 0.47,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Icon(
                              FFIcons.karrowDown,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 10.0,
                    borderWidth: 1.0,
                    buttonSize: 52.0,
                    fillColor: FlutterFlowTheme.of(context).bgBg4,
                    icon: Icon(
                      FFIcons.kconnection,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'WeightInput',
                                        queryParameters: {
                                          'exerciseName': serializeParam(
                                            'Sandbox mode',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF182433),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Text(
                                            'Sandbox mode',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'SF Pro Display',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText1,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              430.0
                                                          ? 14.0
                                                          : 16.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF182433),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 3.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                borderRadius: 10.0,
                                                borderWidth: 1.0,
                                                buttonSize: 48.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                icon: Icon(
                                                  FFIcons.kedit2,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .txtText2,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .isExerciseEditing =
                                                        true;
                                                  });
                                                  showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    isDismissible: false,
                                                    enableDrag: false,
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
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.9,
                                                            child:
                                                                EditExerciseWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                borderRadius: 10.0,
                                                borderWidth: 1.0,
                                                buttonSize: 48.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .bgBg2,
                                                icon: Icon(
                                                  FFIcons.ksort,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Color(0xFF1E2E40),
                        ),
                        if (!FFAppState().isExerciseEditing)
                          Flexible(
                            child: Builder(
                              builder: (context) {
                                final exercise = functions
                                    .sortFunction(
                                        liftSelectionExerciseRecordList
                                            .toList(),
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
                                        MediaQuery.sizeOf(context).width < 430.0
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
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'WeightInput',
                                          queryParameters: {
                                            'exerciseName': serializeParam(
                                              exerciseItem.name,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        await exerciseItem.reference.update({
                                          'exercise_popularity':
                                              FieldValue.increment(1),
                                        });
                                      },
                                      child: ExerciseCopyWidget(
                                        key: Key(
                                            'Keyahr_${exerciseIndex}_of_${exercise.length}'),
                                        exerciseRef: exerciseItem.reference,
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
              ),
            ),
          ),
        );
      },
    );
  }
}
