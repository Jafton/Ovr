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

class Height extends StatefulWidget {
  const Height({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _HeightState createState() => _HeightState();
}

enum HeightUnit { ft, cm }

Map<String, int> extractFeetAndInches(String input) {
  // Split the input string by the single quote (') and remove any extra spaces
  List<String> parts = input.split("'").map((s) => s.trim()).toList();

  int feet = 0;
  int inches = 0;

  if (parts.isNotEmpty) {
    // Extract feet if it exists
    feet = int.tryParse(parts[0]) ?? 0;

    if (parts.length > 1) {
      // Extract inches if it exists
      List<String> inchParts =
          parts[1].split('"').map((s) => s.trim()).toList();
      inches = int.tryParse(inchParts[0]) ?? 0;
    }
  }

  return {'feet': feet, 'inches': inches};
}

class _HeightState extends State<Height> {
  HeightUnit selectedUnit =
      FFAppState().heightUnit == 'ft' ? HeightUnit.ft : HeightUnit.cm;
  TextEditingController heightController = TextEditingController();
  int ft = 5;
  int inches = 9;

  @override
  void initState() {
    super.initState();
    heightController.text = FFAppState().height;
    Map<String, int> result = extractFeetAndInches(FFAppState().height);
    ft = result['feet'] ?? 0;
    inches = result['inches'] ?? 0;
  }

  String cm = FFAppState().height;

  cmToInches(inchess) {
    ft = inchess ~/ 12;
    inches = inchess % 12;
    print('$ft feet and $inches inches');
  }

  inchesToCm() {
    int inchesTotal = (ft * 12) + inches;
    cm = ((inchesTotal * 2.54).round()).toStringAsFixed(0);
    heightController.text = cm;
  }

  void checkHeightUnit() {
    if (selectedUnit == HeightUnit.ft) {
      setState(() {
        int inchess =
            ((double.parse(heightController.text) / 2.54).round()).toInt();
        cmToInches(inchess);
        heightController.text = '$ft\' $inches"';
        FFAppState().update(() {
          FFAppState().height = '$ft\' $inches"';
        });
      });
    } else if (selectedUnit == HeightUnit.cm) {
      setState(() {
        print(heightController.text);
        inchesToCm();
        FFAppState().update(() {
          FFAppState().height = heightController.text;
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
                onTap: selectedUnit == HeightUnit.ft
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
                                          initialItem: ft - 3,
                                        ),
                                        onSelectedItemChanged: (int index) {
                                          print(index + 3);
                                          setState(() {
                                            ft = (index + 3);
                                            heightController.text =
                                                "$ft' $inches\"";
                                            FFAppState().update(() {
                                              FFAppState().height =
                                                  '$ft\' $inches"';
                                            });
                                          });
                                        },
                                        children: List.generate(5, (index) {
                                          return Center(
                                            child: Text('${index + 3}'),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        'ft',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: CupertinoTheme(
                                      data: CupertinoThemeData(
                                        brightness: Brightness.dark,
                                      ),
                                      child: CupertinoPicker(
                                        itemExtent: 32.0,
                                        scrollController:
                                            FixedExtentScrollController(
                                          initialItem: inches,
                                        ),
                                        onSelectedItemChanged: (int index) {
                                          print(index);
                                          setState(() {
                                            inches = (index);
                                            heightController.text =
                                                "$ft' $inches\"";
                                            FFAppState().update(() {
                                              FFAppState().height =
                                                  '$ft\' $inches"';
                                            });
                                          });
                                        },
                                        children: List.generate(12, (index) {
                                          return Center(
                                            child: Text('$index'),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                      child: Text(
                                        'inches',
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
                                          initialItem: int.parse(cm) - 91,
                                        ),
                                        onSelectedItemChanged: (int index) {
                                          print(index + 91);
                                          setState(() {
                                            cm = (index + 91).toString();
                                            heightController.text = "$cm";
                                            FFAppState().update(() {
                                              FFAppState().height = '$cm';
                                            });
                                          });
                                        },
                                        children: List.generate(151, (index) {
                                          return Center(
                                            child: Text('${index + 91}'),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        'cm',
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
                controller: heightController,
                //  initialValue: FFAppState().height,
                showCursor: false,
                enableInteractiveSelection: false,
                onChanged: (text) {
                  FFAppState().update(() {
                    FFAppState().height = heightController.text;
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
                  setState(() {
                    FFAppState().update(() {
                      FFAppState().heightUnit = 'ft';
                    });
                    if (heightController.text.isEmpty) {
                      selectedUnit = HeightUnit.ft;
                    } else {
                      selectedUnit = HeightUnit.ft;
                      checkHeightUnit();
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedUnit == HeightUnit.ft
                          ? Color(0xFF314A68)
                          : Color(0xFF121B26)),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      'ft',
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
                  setState(() {
                    FFAppState().update(() {
                      FFAppState().heightUnit = 'cm';
                    });

                    if (heightController.text.isEmpty) {
                      selectedUnit = HeightUnit.cm;
                    } else if (heightController.text.isNotEmpty &&
                        selectedUnit == HeightUnit.ft) {
                      selectedUnit = HeightUnit.cm;
                      checkHeightUnit();
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedUnit == HeightUnit.cm
                          ? Color(0xFF314A68)
                          : Color(0xFF121B26)),
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      'cm',
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
