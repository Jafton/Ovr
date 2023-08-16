import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _experience = prefs.getString('ff_experience') ?? _experience;
    });
    _safeInit(() {
      _hasPicture = prefs.getBool('ff_hasPicture') ?? _hasPicture;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _experience = 'Advanced';
  String get experience => _experience;
  set experience(String _value) {
    _experience = _value;
    prefs.setString('ff_experience', _value);
  }

  bool _hasPicture = false;
  bool get hasPicture => _hasPicture;
  set hasPicture(bool _value) {
    _hasPicture = _value;
    prefs.setBool('ff_hasPicture', _value);
  }

  bool _isCorrectEmail = false;
  bool get isCorrectEmail => _isCorrectEmail;
  set isCorrectEmail(bool _value) {
    _isCorrectEmail = _value;
  }

  bool _isEmaillExist = false;
  bool get isEmaillExist => _isEmaillExist;
  set isEmaillExist(bool _value) {
    _isEmaillExist = _value;
  }

  String _massUnit = 'lb';
  String get massUnit => _massUnit;
  set massUnit(String _value) {
    _massUnit = _value;
  }

  String _lifterExperience = 'Novice';
  String get lifterExperience => _lifterExperience;
  set lifterExperience(String _value) {
    _lifterExperience = _value;
  }

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(DateTime? _value) {
    _dateOfBirth = _value;
  }

  String _heightUnit = '';
  String get heightUnit => _heightUnit;
  set heightUnit(String _value) {
    _heightUnit = _value;
  }

  String _height = '';
  String get height => _height;
  set height(String _value) {
    _height = _value;
  }

  String _weightUnit = '';
  String get weightUnit => _weightUnit;
  set weightUnit(String _value) {
    _weightUnit = _value;
  }

  String _weight = '';
  String get weight => _weight;
  set weight(String _value) {
    _weight = _value;
  }

  String _sport = '';
  String get sport => _sport;
  set sport(String _value) {
    _sport = _value;
  }

  String _sportPosition = '';
  String get sportPosition => _sportPosition;
  set sportPosition(String _value) {
    _sportPosition = _value;
  }

  bool _isNameEditing = false;
  bool get isNameEditing => _isNameEditing;
  set isNameEditing(bool _value) {
    _isNameEditing = _value;
  }

  int _sportsCount = 1;
  int get sportsCount => _sportsCount;
  set sportsCount(int _value) {
    _sportsCount = _value;
  }

  List<int> _sportsCountList = [0];
  List<int> get sportsCountList => _sportsCountList;
  set sportsCountList(List<int> _value) {
    _sportsCountList = _value;
  }

  void addToSportsCountList(int _value) {
    _sportsCountList.add(_value);
  }

  void removeFromSportsCountList(int _value) {
    _sportsCountList.remove(_value);
  }

  void removeAtIndexFromSportsCountList(int _index) {
    _sportsCountList.removeAt(_index);
  }

  void updateSportsCountListAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _sportsCountList[_index] = updateFn(_sportsCountList[_index]);
  }

  bool _isCorrectPassword = false;
  bool get isCorrectPassword => _isCorrectPassword;
  set isCorrectPassword(bool _value) {
    _isCorrectPassword = _value;
  }

  bool _isCurrentPasswordCorrect = false;
  bool get isCurrentPasswordCorrect => _isCurrentPasswordCorrect;
  set isCurrentPasswordCorrect(bool _value) {
    _isCurrentPasswordCorrect = _value;
  }

  bool _isCorrectUsername = false;
  bool get isCorrectUsername => _isCorrectUsername;
  set isCorrectUsername(bool _value) {
    _isCorrectUsername = _value;
  }

  dynamic _country;
  dynamic get country => _country;
  set country(dynamic _value) {
    _country = _value;
  }

  dynamic _state;
  dynamic get state => _state;
  set state(dynamic _value) {
    _state = _value;
  }

  String _croppedImage = '';
  String get croppedImage => _croppedImage;
  set croppedImage(String _value) {
    _croppedImage = _value;
  }

  bool _isExerciseEditing = false;
  bool get isExerciseEditing => _isExerciseEditing;
  set isExerciseEditing(bool _value) {
    _isExerciseEditing = _value;
  }

  int _pageIndex = 1;
  int get pageIndex => _pageIndex;
  set pageIndex(int _value) {
    _pageIndex = _value;
  }

  String _page = 'Home';
  String get page => _page;
  set page(String _value) {
    _page = _value;
  }

  String _velocityOrJump = 'Velocity';
  String get velocityOrJump => _velocityOrJump;
  set velocityOrJump(String _value) {
    _velocityOrJump = _value;
  }

  List<String> _iconSelection = [
    'FFIcons.kbenchpress',
    'FFIcons.kbacksquat',
    'FFIcons.kdeadlift',
    'FFIcons.kshoulderpress',
    'FFIcons.kpowerclean',
    'FFIcons.kfrontsquat',
    'FFIcons.kreverselunge',
    'FFIcons.ktbdeadlift'
  ];
  List<String> get iconSelection => _iconSelection;
  set iconSelection(List<String> _value) {
    _iconSelection = _value;
  }

  void addToIconSelection(String _value) {
    _iconSelection.add(_value);
  }

  void removeFromIconSelection(String _value) {
    _iconSelection.remove(_value);
  }

  void removeAtIndexFromIconSelection(int _index) {
    _iconSelection.removeAt(_index);
  }

  void updateIconSelectionAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _iconSelection[_index] = updateFn(_iconSelection[_index]);
  }

  String _iconSelected = '';
  String get iconSelected => _iconSelected;
  set iconSelected(String _value) {
    _iconSelected = _value;
  }

  String _sortState = 'ascending';
  String get sortState => _sortState;
  set sortState(String _value) {
    _sortState = _value;
  }

  List<int> _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> get numbers => _numbers;
  set numbers(List<int> _value) {
    _numbers = _value;
  }

  void addToNumbers(int _value) {
    _numbers.add(_value);
  }

  void removeFromNumbers(int _value) {
    _numbers.remove(_value);
  }

  void removeAtIndexFromNumbers(int _index) {
    _numbers.removeAt(_index);
  }

  void updateNumbersAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _numbers[_index] = updateFn(_numbers[_index]);
  }

  String _weightSelection = '';
  String get weightSelection => _weightSelection;
  set weightSelection(String _value) {
    _weightSelection = _value;
  }

  bool _isSelected = false;
  bool get isSelected => _isSelected;
  set isSelected(bool _value) {
    _isSelected = _value;
  }

  String _setGoal = '';
  String get setGoal => _setGoal;
  set setGoal(String _value) {
    _setGoal = _value;
  }

  bool _isGoalSwitchedOn = false;
  bool get isGoalSwitchedOn => _isGoalSwitchedOn;
  set isGoalSwitchedOn(bool _value) {
    _isGoalSwitchedOn = _value;
  }

  bool _boolean = false;
  bool get boolean => _boolean;
  set boolean(bool _value) {
    _boolean = _value;
  }

  String _string = '';
  String get string => _string;
  set string(String _value) {
    _string = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
