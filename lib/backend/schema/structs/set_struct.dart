// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetStruct extends FFFirebaseStruct {
  SetStruct({
    String? setWeight,
    String? setGoal,
    String? setFatigue,
    String? setAverageVelocity,
    String? setMaxVelocity,
    String? setRangeOfMotion,
    String? setAveragePower,
    String? setMaxPower,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _setWeight = setWeight,
        _setGoal = setGoal,
        _setFatigue = setFatigue,
        _setAverageVelocity = setAverageVelocity,
        _setMaxVelocity = setMaxVelocity,
        _setRangeOfMotion = setRangeOfMotion,
        _setAveragePower = setAveragePower,
        _setMaxPower = setMaxPower,
        super(firestoreUtilData);

  // "set_weight" field.
  String? _setWeight;
  String get setWeight => _setWeight ?? '';
  set setWeight(String? val) => _setWeight = val;
  bool hasSetWeight() => _setWeight != null;

  // "set_goal" field.
  String? _setGoal;
  String get setGoal => _setGoal ?? '';
  set setGoal(String? val) => _setGoal = val;
  bool hasSetGoal() => _setGoal != null;

  // "set_fatigue" field.
  String? _setFatigue;
  String get setFatigue => _setFatigue ?? '';
  set setFatigue(String? val) => _setFatigue = val;
  bool hasSetFatigue() => _setFatigue != null;

  // "set_average_velocity" field.
  String? _setAverageVelocity;
  String get setAverageVelocity => _setAverageVelocity ?? '';
  set setAverageVelocity(String? val) => _setAverageVelocity = val;
  bool hasSetAverageVelocity() => _setAverageVelocity != null;

  // "set_max_velocity" field.
  String? _setMaxVelocity;
  String get setMaxVelocity => _setMaxVelocity ?? '';
  set setMaxVelocity(String? val) => _setMaxVelocity = val;
  bool hasSetMaxVelocity() => _setMaxVelocity != null;

  // "set_range_of_motion" field.
  String? _setRangeOfMotion;
  String get setRangeOfMotion => _setRangeOfMotion ?? '';
  set setRangeOfMotion(String? val) => _setRangeOfMotion = val;
  bool hasSetRangeOfMotion() => _setRangeOfMotion != null;

  // "set_average_power" field.
  String? _setAveragePower;
  String get setAveragePower => _setAveragePower ?? '';
  set setAveragePower(String? val) => _setAveragePower = val;
  bool hasSetAveragePower() => _setAveragePower != null;

  // "set_max_power" field.
  String? _setMaxPower;
  String get setMaxPower => _setMaxPower ?? '';
  set setMaxPower(String? val) => _setMaxPower = val;
  bool hasSetMaxPower() => _setMaxPower != null;

  static SetStruct fromMap(Map<String, dynamic> data) => SetStruct(
        setWeight: data['set_weight'] as String?,
        setGoal: data['set_goal'] as String?,
        setFatigue: data['set_fatigue'] as String?,
        setAverageVelocity: data['set_average_velocity'] as String?,
        setMaxVelocity: data['set_max_velocity'] as String?,
        setRangeOfMotion: data['set_range_of_motion'] as String?,
        setAveragePower: data['set_average_power'] as String?,
        setMaxPower: data['set_max_power'] as String?,
      );

  static SetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'set_weight': _setWeight,
        'set_goal': _setGoal,
        'set_fatigue': _setFatigue,
        'set_average_velocity': _setAverageVelocity,
        'set_max_velocity': _setMaxVelocity,
        'set_range_of_motion': _setRangeOfMotion,
        'set_average_power': _setAveragePower,
        'set_max_power': _setMaxPower,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'set_weight': serializeParam(
          _setWeight,
          ParamType.String,
        ),
        'set_goal': serializeParam(
          _setGoal,
          ParamType.String,
        ),
        'set_fatigue': serializeParam(
          _setFatigue,
          ParamType.String,
        ),
        'set_average_velocity': serializeParam(
          _setAverageVelocity,
          ParamType.String,
        ),
        'set_max_velocity': serializeParam(
          _setMaxVelocity,
          ParamType.String,
        ),
        'set_range_of_motion': serializeParam(
          _setRangeOfMotion,
          ParamType.String,
        ),
        'set_average_power': serializeParam(
          _setAveragePower,
          ParamType.String,
        ),
        'set_max_power': serializeParam(
          _setMaxPower,
          ParamType.String,
        ),
      }.withoutNulls;

  static SetStruct fromSerializableMap(Map<String, dynamic> data) => SetStruct(
        setWeight: deserializeParam(
          data['set_weight'],
          ParamType.String,
          false,
        ),
        setGoal: deserializeParam(
          data['set_goal'],
          ParamType.String,
          false,
        ),
        setFatigue: deserializeParam(
          data['set_fatigue'],
          ParamType.String,
          false,
        ),
        setAverageVelocity: deserializeParam(
          data['set_average_velocity'],
          ParamType.String,
          false,
        ),
        setMaxVelocity: deserializeParam(
          data['set_max_velocity'],
          ParamType.String,
          false,
        ),
        setRangeOfMotion: deserializeParam(
          data['set_range_of_motion'],
          ParamType.String,
          false,
        ),
        setAveragePower: deserializeParam(
          data['set_average_power'],
          ParamType.String,
          false,
        ),
        setMaxPower: deserializeParam(
          data['set_max_power'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SetStruct &&
        setWeight == other.setWeight &&
        setGoal == other.setGoal &&
        setFatigue == other.setFatigue &&
        setAverageVelocity == other.setAverageVelocity &&
        setMaxVelocity == other.setMaxVelocity &&
        setRangeOfMotion == other.setRangeOfMotion &&
        setAveragePower == other.setAveragePower &&
        setMaxPower == other.setMaxPower;
  }

  @override
  int get hashCode => const ListEquality().hash([
        setWeight,
        setGoal,
        setFatigue,
        setAverageVelocity,
        setMaxVelocity,
        setRangeOfMotion,
        setAveragePower,
        setMaxPower
      ]);
}

SetStruct createSetStruct({
  String? setWeight,
  String? setGoal,
  String? setFatigue,
  String? setAverageVelocity,
  String? setMaxVelocity,
  String? setRangeOfMotion,
  String? setAveragePower,
  String? setMaxPower,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SetStruct(
      setWeight: setWeight,
      setGoal: setGoal,
      setFatigue: setFatigue,
      setAverageVelocity: setAverageVelocity,
      setMaxVelocity: setMaxVelocity,
      setRangeOfMotion: setRangeOfMotion,
      setAveragePower: setAveragePower,
      setMaxPower: setMaxPower,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SetStruct? updateSetStruct(
  SetStruct? set, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    set
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSetStructData(
  Map<String, dynamic> firestoreData,
  SetStruct? set,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (set == null) {
    return;
  }
  if (set.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && set.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final setData = getSetFirestoreData(set, forFieldValue);
  final nestedData = setData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = set.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSetFirestoreData(
  SetStruct? set, [
  bool forFieldValue = false,
]) {
  if (set == null) {
    return {};
  }
  final firestoreData = mapToFirestore(set.toMap());

  // Add any Firestore field values
  set.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSetListFirestoreData(
  List<SetStruct>? sets,
) =>
    sets?.map((e) => getSetFirestoreData(e, true)).toList() ?? [];
