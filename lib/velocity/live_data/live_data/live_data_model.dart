import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:ovr_performance/app_bluetooth/app_bluetooth.dart';

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/velocity/live_data/end_set/end_set_widget.dart';
import '/velocity/live_data/rep_data/rep_data_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LiveDataModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for repData component.
  late RepDataModel repDataModel;
  // Model for endSet component.
  late EndSetModel endSetModel;
  BluetoothCharacteristic? midSetChar;




  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    repDataModel = createModel(context, () => RepDataModel());
    endSetModel = createModel(context, () => EndSetModel());
  }

  Future<void> notifyLivDataVelocity(BluetoothDevice device) async {
    late BluetoothService service;
    List<BluetoothService> services = await device.discoverServices();
    for (BluetoothService bluetoothService in services) {
      if (bluetoothService.uuid.toString() == AppBluetooth.serviceUuid) {
        service = bluetoothService;
      }
    }
    var characteristics = service.characteristics;
    for (BluetoothCharacteristic bluetoothCharacteristic in characteristics) {
      if (bluetoothCharacteristic.uuid.toString() == AppBluetooth.notifyChar) {
        midSetChar = bluetoothCharacteristic;
      }
    }
    midSetChar!.setNotifyValue(true);

  }


  void dispose() {

    unfocusNode.dispose();
    repDataModel.dispose();
    endSetModel.dispose();
  }


  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
