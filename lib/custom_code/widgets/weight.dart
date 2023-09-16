// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart'; // Import this line

class Weight extends StatefulWidget {
  const Weight({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _WeightState createState() => _WeightState();
}

enum WeightUnit { lbs, kg }

class _WeightState extends State<Weight> {
  WeightUnit selectedUnit =
      FFAppState().weightUnit == 'lbs' ? WeightUnit.lbs : WeightUnit.kg;
  TextEditingController weightController = TextEditingController();
  int lbs = int.parse(FFAppState().weight);

  @override
  void initState() {
    super.initState();
    weightController.text = FFAppState().weight;
  }

  String kg = FFAppState().weight;

  kgToLbs() {
    lbs = (double.parse(kg) * 2.205).round();
    print('$lbs');
  }

  LbsToKg() {
    double pounds = lbs.toDouble();
    double kilograms = pounds / 2.205;
    kg = kilograms
        .round()
        .toString(); // You can adjust the number of decimal places.
    weightController.text = kg;
  }

  void checkWeightUnit() {
    if (selectedUnit == WeightUnit.lbs) {
      setState(() {
        kgToLbs();
        weightController.text = '$lbs';
        FFAppState().update(() {
          FFAppState().weight = '$lbs';
        });
      });
    } else if (selectedUnit == WeightUnit.kg) {
      setState(() {
        print(weightController.text);
        LbsToKg();
        FFAppState().update(() {
          FFAppState().weight = weightController.text;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A2432),
      body: Center(
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 120,
              child: TextFormField(
                onTap: selectedUnit == WeightUnit.lbs
                    ? () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Color(0xFF1A2432),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16.0),
                                  //  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(16.0),
                                  // bottomLeft: Radius.circular(40.0)),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: CupertinoTheme(
                                      data: CupertinoThemeData(
                                        brightness: Brightness.dark,
                                      ),
                                      child: CupertinoPicker(
                                        itemExtent: 32.0,
                                        scrollController:
                                            FixedExtentScrollController(
                                          initialItem: lbs - 75,
                                        ),
                                        onSelectedItemChanged: (int index) {
                                          print(index + 75);
                                          setState(() {
                                            lbs = (index + 75);
                                            weightController.text = "$lbs";
                                            FFAppState().update(() {
                                              FFAppState().weight = '$lbs';
                                            });
                                          });
                                        },
                                        children: List.generate(326, (index) {
                                          return Center(
                                            child: Text('${index + 75}'),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        'lbs',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    : () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Color(0xFF1A2432),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(16.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: CupertinoTheme(
                                      data: CupertinoThemeData(
                                        brightness: Brightness.dark,
                                      ),
                                      child: CupertinoPicker(
                                        itemExtent: 32.0,
                                        scrollController:
                                            FixedExtentScrollController(
                                          initialItem: int.parse(kg) - 34,
                                        ),
                                        onSelectedItemChanged: (int index) {
                                          print(index + 34);
                                          setState(() {
                                            kg = (index + 34).toString();
                                            weightController.text = "$kg";
                                            FFAppState().update(() {
                                              FFAppState().weight = '$kg';
                                            });
                                          });
                                        },
                                        children: List.generate(148, (index) {
                                          return Center(
                                            child: Text('${index + 34}'),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        'kg',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Display',
                                          decoration: TextDecoration.none,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                controller: weightController,
                //  initialValue: FFAppState().height,
                showCursor: false,
                enableInteractiveSelection: false,
                onChanged: (text) {
                  FFAppState().update(() {
                    FFAppState().weight = weightController.text;
                  });
                },
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Bicyclette',
                      color: FlutterFlowTheme.of(context).txtText1,
                      fontSize: 36.0,
                      fontWeight: FontWeight.w900,
                      useGoogleFonts: false,
                    ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                cursorColor: Color(0xFF314A68),
                decoration: InputDecoration(
                    hintText: FFAppState().height,
                    //selectedUnit == HeightUnit.ft ? "__' __\"" : '0',
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.only(top: 12.0, bottom: 2.0),
                    filled: true,
                    fillColor: Color(0xff121B26),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Color(0xff121B26)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Color(0xff121B26)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Color(0xff121B26)),
                    )),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d{1,3}'))
                ],
              ),
            ),
            SizedBox(width: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                onTap: () {
                  FFAppState().update(() {
                    FFAppState().weightUnit = 'lbs';
                  });
                  setState(() {
                    if (weightController.text.isEmpty) {
                      selectedUnit = WeightUnit.lbs;
                    } else if (weightController.text.isNotEmpty &&
                        selectedUnit == WeightUnit.kg) {
                      selectedUnit = WeightUnit.lbs;
                      checkWeightUnit();
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedUnit == WeightUnit.lbs
                          ? Color(0xFF314A68)
                          : Color(0xFF121B26)),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      'lbs',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText1,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                onTap: () {
                  FFAppState().update(() {
                    FFAppState().weightUnit = 'kg';
                  });
                  setState(() {
                    if (weightController.text.isEmpty) {
                      selectedUnit = WeightUnit.kg;
                    } else if (weightController.text.isNotEmpty &&
                        selectedUnit == WeightUnit.lbs) {
                      selectedUnit = WeightUnit.kg;
                      checkWeightUnit();
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedUnit == WeightUnit.kg
                          ? Color(0xFF314A68)
                          : Color(0xFF121B26)),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      'kg',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SF Pro Display',
                            color: FlutterFlowTheme.of(context).txtText1,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
