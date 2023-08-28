import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:ovr_performance/app_bluetooth/app_bluetooth.dart';
import 'package:ovr_performance/connection/velocity_device/velocity_device_widget.dart';
import 'package:ovr_performance/connection/widgets/device_component.dart';
import 'package:ovr_performance/connection/widgets/search_component.dart';
import 'package:permission_handler/permission_handler.dart';

import '/connection/single_device/single_device_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bluetooth1_model.dart';
export 'bluetooth1_model.dart';

class Bluetooth1Widget extends StatefulWidget {
  const Bluetooth1Widget({Key? key}) : super(key: key);

  @override
  _Bluetooth1WidgetState createState() => _Bluetooth1WidgetState();
}

class _Bluetooth1WidgetState extends State<Bluetooth1Widget> {
  late Bluetooth1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<BluetoothDevice> velocityDeviceList = [];
  final List<BluetoothDevice> ovrJumpDeviceList = [];

  bool isLoading = true;
  StreamSubscription<List<ScanResult>>? streamSubscription;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Bluetooth1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // await actions.saved();
      // _model.result = await actions.searchingDevice();
      getDeviceSearchList();
    });
  }

  @override
  void dispose() {
    _model.dispose();
    streamSubscription?.cancel();
    FlutterBluePlus.stopScan();
    super.dispose();
  }

  void getDeviceSearchList() async {
    setState(() {
      isLoading = true;
    });
    Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetooth,
      // Permission.bluetoothScan,
      // Permission.bluetoothConnect,
      // Permission.bluetoothAdvertise,
      // Permission.location,
    ].request();
    streamSubscription = FlutterBluePlus.scanResults.listen((event) {
      velocityDeviceList.clear();
      for (ScanResult value in event) {
        if (value.device.localName.contains('GravityBox-3802')) velocityDeviceList.add(value.device);
      }
      print(velocityDeviceList.toString());
    });
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 5)).whenComplete(() {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Container(
          // width: MediaQuery.sizeOf(context).width * 1.0,
          // height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/bluetooth.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: isLoading
                ? Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      initAppBar(),
                      SizedBox(height: 24),
                      SearchComponent(),
                    ],
                  )
                : CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: initAppBar(),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: 24),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: initDeviceList(),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget initAppBar() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x9A121B26),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
                child: Icon(
                  FFIcons.karrowLeft,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
          Text(
            'SEARCHING',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Bicyclette',
                  fontSize: MediaQuery.sizeOf(context).width < 430.0 ? 24.0 : 36.0,
                  fontWeight: FontWeight.w900,
                  useGoogleFonts: false,
                ),
          ),
          Container(
            width: 50.0,
            decoration: BoxDecoration(
              color: Color(0x00121B26),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget initDeviceList() {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgBg5,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/OVR_VELOCITY_(app).png',
              width: MediaQuery.sizeOf(context).width * 0.6,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 500,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 10.0,
                //childAspectRatio: 1,
              ),
              itemCount: velocityDeviceList.length,
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
                    bool isConnected = isConnectedDevice(
                      bluetoothDevice: velocityDeviceList[index],
                      connectedDevice: AppBluetooth.connectedVelocityDevice,
                    );

                    if (!isConnected) {
                      await AppBluetooth.connectedVelocityDevice!.disconnect();
                      await velocityDeviceList[index].connect().then((value) {
                        AppBluetooth.connectedVelocityDevice = velocityDeviceList[index];
                      });
                    }

                    setState(() {});
                  },
                  child: DeviceComponent(
                    isVelocity: true,
                    isConnected: isConnectedDevice(
                      bluetoothDevice: velocityDeviceList[index],
                      connectedDevice: AppBluetooth.connectedVelocityDevice,
                    ),
                  ),
                );
              },
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/OVR_JUMP_(app).png',
              width: MediaQuery.sizeOf(context).width * 0.6,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 500,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 10.0,
                //childAspectRatio: 1,
              ),
              itemCount: 10,
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
                    bool isConnected = isConnectedDevice(
                      bluetoothDevice: ovrJumpDeviceList[index],
                      connectedDevice: AppBluetooth.connectedVelocityDevice,
                    );

                    if (!isConnected) {
                      await AppBluetooth.connectedOvrJumpDevice!.disconnect();
                      await ovrJumpDeviceList[index].connect().then((value) {
                        AppBluetooth.connectedOvrJumpDevice = ovrJumpDeviceList[index];
                      });
                    }

                    setState(() {});
                  },
                  child: DeviceComponent(
                    isVelocity: false,
                    isConnected: isConnectedDevice(
                      bluetoothDevice: ovrJumpDeviceList[index],
                      connectedDevice: AppBluetooth.connectedOvrJumpDevice,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 24.0),
            child: FFButtonWidget(
              onPressed: () {
                getDeviceSearchList();
              },
              text: 'SEARCH DEVICES',
              options: FFButtonOptions(
                width: double.infinity,
                height: 56.0,
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
                disabledColor: FlutterFlowTheme.of(context).bgStroke,
                disabledTextColor: FlutterFlowTheme.of(context).txtText2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isConnectedDevice({
    required BluetoothDevice bluetoothDevice,
    required BluetoothDevice? connectedDevice,
  }) {
    if (connectedDevice != null && bluetoothDevice.remoteId == connectedDevice.remoteId) {
      return true;
    }

    return false;
  }
}
