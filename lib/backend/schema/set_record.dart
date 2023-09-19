import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetRecord extends FirestoreRecord {
  SetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "set_creation_date" field.
  DateTime? _setCreationDate;
  DateTime? get setCreationDate => _setCreationDate;
  bool hasSetCreationDate() => _setCreationDate != null;

  // "set_exercise_ref" field.
  DocumentReference? _setExerciseRef;
  DocumentReference? get setExerciseRef => _setExerciseRef;
  bool hasSetExerciseRef() => _setExerciseRef != null;

  // "set_weight" field.
  String? _setWeight;
  String get setWeight => _setWeight ?? '';
  bool hasSetWeight() => _setWeight != null;

  // "set_goal" field.
  String? _setGoal;
  String get setGoal => _setGoal ?? '';
  bool hasSetGoal() => _setGoal != null;

  // "set_average_velocity" field.
  String? _setAverageVelocity;
  String get setAverageVelocity => _setAverageVelocity ?? '';
  bool hasSetAverageVelocity() => _setAverageVelocity != null;

  // "set_max_velocity" field.
  String? _setMaxVelocity;
  String get setMaxVelocity => _setMaxVelocity ?? '';
  bool hasSetMaxVelocity() => _setMaxVelocity != null;

  // "set_range_of_motion" field.
  String? _setRangeOfMotion;
  String get setRangeOfMotion => _setRangeOfMotion ?? '';
  bool hasSetRangeOfMotion() => _setRangeOfMotion != null;

  // "set_average_power" field.
  String? _setAveragePower;
  String get setAveragePower => _setAveragePower ?? '';
  bool hasSetAveragePower() => _setAveragePower != null;

  // "set_max_power" field.
  String? _setMaxPower;
  String get setMaxPower => _setMaxPower ?? '';
  bool hasSetMaxPower() => _setMaxPower != null;

  // "set_list_of_rep" field.
  List<RepStruct>? _setListOfRep;
  List<RepStruct> get setListOfRep => _setListOfRep ?? const [];
  bool hasSetListOfRep() => _setListOfRep != null;

  // "date_string" field.
  String? _dateString;
  String get dateString => _dateString ?? '';
  bool hasDateString() => _dateString != null;

  // "set_weight_kg" field.
  String? _setWeightKg;
  String get setWeightKg => _setWeightKg ?? '';
  bool hasSetWeightKg() => _setWeightKg != null;

  // "set_vertical_jump_reps" field.
  List<String>? _setVerticalJumpReps;
  List<String> get setVerticalJumpReps => _setVerticalJumpReps ?? const [];
  bool hasSetVerticalJumpReps() => _setVerticalJumpReps != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _setCreationDate = snapshotData['set_creation_date'] as DateTime?;
    _setExerciseRef = snapshotData['set_exercise_ref'] as DocumentReference?;
    _setWeight = snapshotData['set_weight'] as String?;
    _setGoal = snapshotData['set_goal'] as String?;
    _setAverageVelocity = snapshotData['set_average_velocity'] as String?;
    _setMaxVelocity = snapshotData['set_max_velocity'] as String?;
    _setRangeOfMotion = snapshotData['set_range_of_motion'] as String?;
    _setAveragePower = snapshotData['set_average_power'] as String?;
    _setMaxPower = snapshotData['set_max_power'] as String?;
    _setListOfRep = getStructList(
      snapshotData['set_list_of_rep'],
      RepStruct.fromMap,
    );
    _dateString = snapshotData['date_string'] as String?;
    _setWeightKg = snapshotData['set_weight_kg'] as String?;
    _setVerticalJumpReps = getDataList(snapshotData['set_vertical_jump_reps']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('set')
          : FirebaseFirestore.instance.collectionGroup('set');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('set').doc();

  static Stream<SetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SetRecord.fromSnapshot(s));

  static Future<SetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SetRecord.fromSnapshot(s));

  static SetRecord fromSnapshot(DocumentSnapshot snapshot) => SetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSetRecordData({
  DateTime? setCreationDate,
  DocumentReference? setExerciseRef,
  String? setWeight,
  String? setGoal,
  String? setAverageVelocity,
  String? setMaxVelocity,
  String? setRangeOfMotion,
  String? setAveragePower,
  String? setMaxPower,
  String? dateString,
  String? setWeightKg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'set_creation_date': setCreationDate,
      'set_exercise_ref': setExerciseRef,
      'set_weight': setWeight,
      'set_goal': setGoal,
      'set_average_velocity': setAverageVelocity,
      'set_max_velocity': setMaxVelocity,
      'set_range_of_motion': setRangeOfMotion,
      'set_average_power': setAveragePower,
      'set_max_power': setMaxPower,
      'date_string': dateString,
      'set_weight_kg': setWeightKg,
    }.withoutNulls,
  );

  return firestoreData;
}

class SetRecordDocumentEquality implements Equality<SetRecord> {
  const SetRecordDocumentEquality();

  @override
  bool equals(SetRecord? e1, SetRecord? e2) {
    const listEquality = ListEquality();
    return e1?.setCreationDate == e2?.setCreationDate &&
        e1?.setExerciseRef == e2?.setExerciseRef &&
        e1?.setWeight == e2?.setWeight &&
        e1?.setGoal == e2?.setGoal &&
        e1?.setAverageVelocity == e2?.setAverageVelocity &&
        e1?.setMaxVelocity == e2?.setMaxVelocity &&
        e1?.setRangeOfMotion == e2?.setRangeOfMotion &&
        e1?.setAveragePower == e2?.setAveragePower &&
        e1?.setMaxPower == e2?.setMaxPower &&
        listEquality.equals(e1?.setListOfRep, e2?.setListOfRep) &&
        e1?.dateString == e2?.dateString &&
        e1?.setWeightKg == e2?.setWeightKg &&
        listEquality.equals(e1?.setVerticalJumpReps, e2?.setVerticalJumpReps);
  }

  @override
  int hash(SetRecord? e) => const ListEquality().hash([
        e?.setCreationDate,
        e?.setExerciseRef,
        e?.setWeight,
        e?.setGoal,
        e?.setAverageVelocity,
        e?.setMaxVelocity,
        e?.setRangeOfMotion,
        e?.setAveragePower,
        e?.setMaxPower,
        e?.setListOfRep,
        e?.dateString,
        e?.setWeightKg,
        e?.setVerticalJumpReps
      ]);

  @override
  bool isValidKey(Object? o) => o is SetRecord;
}
