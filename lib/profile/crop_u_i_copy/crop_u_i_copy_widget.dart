import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'crop_u_i_copy_model.dart';
export 'crop_u_i_copy_model.dart';

class CropUICopyWidget extends StatefulWidget {
  const CropUICopyWidget({
    Key? key,
    this.image,
  }) : super(key: key);

  final FFUploadedFile? image;

  @override
  _CropUICopyWidgetState createState() => _CropUICopyWidgetState();
}

class _CropUICopyWidgetState extends State<CropUICopyWidget> {
  late CropUICopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CropUICopyModel());
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
      height: MediaQuery.sizeOf(context).height * 1.0,
      child: custom_widgets.PhotoCropUICopy(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 1.0,
        top: 0.0,
        right: 0.0,
        bottom: 0.0,
        left: 0.0,
        imageFile: widget.image!,
        callBackAction: () async {
          await actions.callbackAction(
            FFAppState().croppedImage,
            currentUserUid,
          );
        },
      ),
    );
  }
}
