// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepStruct extends FFFirebaseStruct {
  RepStruct({
    String? repVelocity,
    String? repFatigue,
    String? repMaxVelocity,
    String? repRangeOfMotion,
    String? repPower,
    String? repMaxPower,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _repVelocity = repVelocity,
        _repFatigue = repFatigue,
        _repMaxVelocity = repMaxVelocity,
        _repRangeOfMotion = repRangeOfMotion,
        _repPower = repPower,
        _repMaxPower = repMaxPower,
        super(firestoreUtilData);

  // "rep_velocity" field.
  String? _repVelocity;
  String get repVelocity => _repVelocity ?? '';
  set repVelocity(String? val) => _repVelocity = val;
  bool hasRepVelocity() => _repVelocity != null;

  // "rep_fatigue" field.
  String? _repFatigue;
  String get repFatigue => _repFatigue ?? '';
  set repFatigue(String? val) => _repFatigue = val;
  bool hasRepFatigue() => _repFatigue != null;

  // "rep_max_velocity" field.
  String? _repMaxVelocity;
  String get repMaxVelocity => _repMaxVelocity ?? '';
  set repMaxVelocity(String? val) => _repMaxVelocity = val;
  bool hasRepMaxVelocity() => _repMaxVelocity != null;

  // "rep_range_of_motion" field.
  String? _repRangeOfMotion;
  String get repRangeOfMotion => _repRangeOfMotion ?? '';
  set repRangeOfMotion(String? val) => _repRangeOfMotion = val;
  bool hasRepRangeOfMotion() => _repRangeOfMotion != null;

  // "rep_power" field.
  String? _repPower;
  String get repPower => _repPower ?? '';
  set repPower(String? val) => _repPower = val;
  bool hasRepPower() => _repPower != null;

  // "rep_max_power" field.
  String? _repMaxPower;
  String get repMaxPower => _repMaxPower ?? '';
  set repMaxPower(String? val) => _repMaxPower = val;
  bool hasRepMaxPower() => _repMaxPower != null;

  static RepStruct fromMap(Map<String, dynamic> data) => RepStruct(
        repVelocity: data['rep_velocity'] as String?,
        repFatigue: data['rep_fatigue'] as String?,
        repMaxVelocity: data['rep_max_velocity'] as String?,
        repRangeOfMotion: data['rep_range_of_motion'] as String?,
        repPower: data['rep_power'] as String?,
        repMaxPower: data['rep_max_power'] as String?,
      );

  static RepStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RepStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'rep_velocity': _repVelocity,
        'rep_fatigue': _repFatigue,
        'rep_max_velocity': _repMaxVelocity,
        'rep_range_of_motion': _repRangeOfMotion,
        'rep_power': _repPower,
        'rep_max_power': _repMaxPower,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rep_velocity': serializeParam(
          _repVelocity,
          ParamType.String,
        ),
        'rep_fatigue': serializeParam(
          _repFatigue,
          ParamType.String,
        ),
        'rep_max_velocity': serializeParam(
          _repMaxVelocity,
          ParamType.String,
        ),
        'rep_range_of_motion': serializeParam(
          _repRangeOfMotion,
          ParamType.String,
        ),
        'rep_power': serializeParam(
          _repPower,
          ParamType.String,
        ),
        'rep_max_power': serializeParam(
          _repMaxPower,
          ParamType.String,
        ),
      }.withoutNulls;

  static RepStruct fromSerializableMap(Map<String, dynamic> data) => RepStruct(
        repVelocity: deserializeParam(
          data['rep_velocity'],
          ParamType.String,
          false,
        ),
        repFatigue: deserializeParam(
          data['rep_fatigue'],
          ParamType.String,
          false,
        ),
        repMaxVelocity: deserializeParam(
          data['rep_max_velocity'],
          ParamType.String,
          false,
        ),
        repRangeOfMotion: deserializeParam(
          data['rep_range_of_motion'],
          ParamType.String,
          false,
        ),
        repPower: deserializeParam(
          data['rep_power'],
          ParamType.String,
          false,
        ),
        repMaxPower: deserializeParam(
          data['rep_max_power'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RepStruct &&
        repVelocity == other.repVelocity &&
        repFatigue == other.repFatigue &&
        repMaxVelocity == other.repMaxVelocity &&
        repRangeOfMotion == other.repRangeOfMotion &&
        repPower == other.repPower &&
        repMaxPower == other.repMaxPower;
  }

  @override
  int get hashCode => const ListEquality().hash([
        repVelocity,
        repFatigue,
        repMaxVelocity,
        repRangeOfMotion,
        repPower,
        repMaxPower
      ]);
}

RepStruct createRepStruct({
  String? repVelocity,
  String? repFatigue,
  String? repMaxVelocity,
  String? repRangeOfMotion,
  String? repPower,
  String? repMaxPower,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RepStruct(
      repVelocity: repVelocity,
      repFatigue: repFatigue,
      repMaxVelocity: repMaxVelocity,
      repRangeOfMotion: repRangeOfMotion,
      repPower: repPower,
      repMaxPower: repMaxPower,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RepStruct? updateRepStruct(
  RepStruct? rep, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rep
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRepStructData(
  Map<String, dynamic> firestoreData,
  RepStruct? rep,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rep == null) {
    return;
  }
  if (rep.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && rep.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final repData = getRepFirestoreData(rep, forFieldValue);
  final nestedData = repData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rep.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRepFirestoreData(
  RepStruct? rep, [
  bool forFieldValue = false,
]) {
  if (rep == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rep.toMap());

  // Add any Firestore field values
  rep.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRepListFirestoreData(
  List<RepStruct>? reps,
) =>
    reps?.map((e) => getRepFirestoreData(e, true)).toList() ?? [];
