import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'check_data_model.dart';
export 'check_data_model.dart';

class CheckDataWidget extends StatefulWidget {
  const CheckDataWidget({Key? key}) : super(key: key);

  @override
  _CheckDataWidgetState createState() => _CheckDataWidgetState();
}

class _CheckDataWidgetState extends State<CheckDataWidget> {
  late CheckDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckDataModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      await Future.delayed(const Duration(milliseconds: 1500));
      if ((currentUserDisplayName == null || currentUserDisplayName == '') ||
          (valueOrDefault(currentUserDocument?.userUnits, '') == null ||
              valueOrDefault(currentUserDocument?.userUnits, '') == '') ||
          (valueOrDefault(currentUserDocument?.userHeight, '') == null ||
              valueOrDefault(currentUserDocument?.userHeight, '') == '') ||
          (valueOrDefault(currentUserDocument?.userWeight, '') == null ||
              valueOrDefault(currentUserDocument?.userWeight, '') == '') ||
          (currentUserDocument?.userDateOfBirth == null)) {
        context.goNamed(
          'PersonalInfoPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        setState(() {
          FFAppState().pageIndex = 1;
        });

        context.goNamed(
          'MainPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x00000099),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/__2023-07-11__12.40.05.png',
                ).image,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: MediaQuery.sizeOf(context).width * 0.25,
                          height: MediaQuery.sizeOf(context).height * 0.11,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/animation_640_li8wvbwj_1.png',
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        fit: BoxFit.fitWidth,
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
  }
}
