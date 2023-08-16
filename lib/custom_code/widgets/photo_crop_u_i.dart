// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:path_provider/path_provider.dart';

import '/backend/firebase_storage/storage.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/flutter_flow_widgets.dart';

import '../../auth/firebase_auth/auth_util.dart';

class PhotoCropUI extends StatefulWidget {
  const PhotoCropUI({
    Key? key,
    this.width,
    this.height,
    required this.imageFile,
    this.top,
    this.right,
    this.bottom,
    this.left,
    required this.callBackAction,
  }) : super(key: key);

  final double? width;
  final double? height;
  final FFUploadedFile imageFile;
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final Future<dynamic> Function() callBackAction;

  @override
  _PhotoCropUIState createState() => _PhotoCropUIState();
}

class _PhotoCropUIState extends State<PhotoCropUI> {
  late final CropController _cropController = CropController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    double width = widget.width ?? double.infinity;
    double height = widget.height ?? 555;
    return Stack(
      alignment: AlignmentDirectional(0, 1),
      children: [
        Container(
          width: widget.width ?? double.infinity,
          height: widget.height ?? 555,
          child: Center(
            child: Crop(
              fixArea: true,
              image: Uint8List.fromList(widget.imageFile.bytes!),
              controller: _cropController,
              onCropped: (image) async {
                final path = _getStoragePath(
                  _firebasePathPrefix(),
                  widget.imageFile.name!,
                  false,
                  0,
                );
                uploadData(path, image).then((value) {
                  FFAppState().update(() {
                    FFAppState().croppedImage = value!;
                  });

                  print('image cropped');
                  widget.callBackAction.call();
                  setState(() {
                    loading = false;
                  });
                });
              },
              //  aspectRatio: 1 / 1,
              withCircleUi: false,
              initialAreaBuilder: (rect) => Rect.fromLTRB(
                  rect.left, rect.top + 219, rect.right, rect.bottom - 219),
//(height - (height - width)) / 2)
              baseColor: const Color.fromARGB(255, 0, 3, 22),
              // maskColor: Colors.white.withAlpha(100),
              //radius: 20,
              onMoved: (_) {},
              onStatusChanged: (_) {},
              cornerDotBuilder: (double size, EdgeAlignment edgeAlignment) =>
                  Container(
                width: 0,
                height: 0,
              ),

              interactive: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 16, top: 59, end: 16, bottom: 42),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 28,
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  if (!loading) {
                    setState(() {
                      loading = true;
                    });
                    _cropController.crop();
                  }
                  await Future.delayed(const Duration(milliseconds: 1000));
                  Navigator.pop(context);
                },
                text: 'Set photo',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48,
                  padding: EdgeInsets.zero,
                  iconPadding: EdgeInsets.zero,
                  color: Color(0xFF26BAE5),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 15,
                      ),
                  elevation: 0,
                  borderSide: const BorderSide(
                    color: Color(0xFF26BAE5),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getStoragePath(
    String? pathPrefix,
    String filePath,
    bool isVideo, [
    int? index,
  ]) {
    pathPrefix ??= _firebasePathPrefix();
    pathPrefix = _removeTrailingSlash(pathPrefix);
    final timestamp = DateTime.now().microsecondsSinceEpoch;
    final prefix = 'cropped-';
    final ext = isVideo ? 'mp4' : filePath.split('.').last;
    final indexStr = index != null ? '_$index' : '';
    return '$pathPrefix/$prefix$timestamp$indexStr.$ext';
  }

  String? _removeTrailingSlash(String? path) =>
      path != null && path.endsWith('/')
          ? path.substring(0, path.length - 1)
          : path;

  String _firebasePathPrefix() => 'users/$currentUserUid/uploads';
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
