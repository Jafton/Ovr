import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '/connection/velocity_device/velocity_device_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'single_device_model.dart';
export 'single_device_model.dart';

class SingleDeviceWidget extends StatefulWidget {
  final List<BluetoothDevice> gravityBoxDeviceList;

  const SingleDeviceWidget({Key? key, required this.gravityBoxDeviceList}) : super(key: key);

  @override
  _SingleDeviceWidgetState createState() => _SingleDeviceWidgetState();
}

class _SingleDeviceWidgetState extends State<SingleDeviceWidget> {
  late SingleDeviceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleDeviceModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/OVR_VELOCITY_(app).png',
                width: MediaQuery.sizeOf(context).width * 0.6,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 500,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 10.0,
                //childAspectRatio: 1,
              ),
              itemCount: widget.gravityBoxDeviceList.length,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {});
                  },
                  child: VelocityDeviceWidget(
                    isConnected: false,
                  ),
                );
              },
            ),
          ),
          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(8.0),
          //     child: Image.asset(
          //       'assets/images/OVR_JUMP_(app).png',
          //       width: MediaQuery.sizeOf(context).width * 0.4,
          //       fit: BoxFit.contain,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 500,
          //   child: GridView.builder(
          //     padding: EdgeInsets.zero,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 16.0,
          //       mainAxisSpacing: 10.0,
          //       //childAspectRatio: 1,
          //     ),
          //     itemCount: 10,
          //     primary: false,
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (BuildContext context, int index) {
          //       return InkWell(
          //         splashColor: Colors.transparent,
          //         focusColor: Colors.transparent,
          //         hoverColor: Colors.transparent,
          //         highlightColor: Colors.transparent,
          //         onTap: () async {
          //           setState(() {});
          //         },
          //         child: VelocityDeviceWidget(
          //           isConnected: false,
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
