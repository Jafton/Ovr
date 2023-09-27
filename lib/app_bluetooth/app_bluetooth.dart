import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class AppBluetooth {
  static BluetoothDevice? connectedVelocityDevice;
  static BluetoothDevice? connectedOvrJumpDevice;
  static BluetoothCharacteristic? bluetoothCharacteristic;
  static final String notifyChar = "14001dc2-5089-47d3-84bc-7c3d418389aa";
  static final String resetChar = "157d7113-430e-412b-8835-c65fa3fc0818";
  static final String midSetChar = "3fec9966-47e8-4595-9b49-b91104c312d3";
  static final String unitsChar = "6fec9966-47e8-4595-9b49-b91104c312d3";
  static final String weightChar = "ba755038-b91d-4efb-9fce-b6ce2a9beb01";
  static final String eccentricChar = "fa755038-b91d-4efb-9fce-b6ce2a9beb01";
  static final String serviceUuid = "4fafc201-1fb5-459e-8fcc-c5c9c331914b";
}
