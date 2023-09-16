import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'photo_crop_model.dart';
export 'photo_crop_model.dart';

class PhotoCropWidget extends StatefulWidget {
  const PhotoCropWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String? imagePath;

  @override
  _PhotoCropWidgetState createState() => _PhotoCropWidgetState();
}

class _PhotoCropWidgetState extends State<PhotoCropWidget> {
  late PhotoCropModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoCropModel());
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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      child: custom_widgets.HomePage(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        title: 'String',
        photo: widget.imagePath!,
      ),
    );
  }
}
