import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExerciseRecord extends FirestoreRecord {
  ExerciseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "exercise_e1RM" field.
  String? _exerciseE1RM;
  String get exerciseE1RM => _exerciseE1RM ?? '';
  bool hasExerciseE1RM() => _exerciseE1RM != null;

  // "exercise_owner" field.
  DocumentReference? _exerciseOwner;
  DocumentReference? get exerciseOwner => _exerciseOwner;
  bool hasExerciseOwner() => _exerciseOwner != null;

  // "exercise_icon" field.
  String? _exerciseIcon;
  String get exerciseIcon => _exerciseIcon ?? '';
  bool hasExerciseIcon() => _exerciseIcon != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "exercise_type" field.
  String? _exerciseType;
  String get exerciseType => _exerciseType ?? '';
  bool hasExerciseType() => _exerciseType != null;

  // "exercise_popularity" field.
  int? _exercisePopularity;
  int get exercisePopularity => _exercisePopularity ?? 0;
  bool hasExercisePopularity() => _exercisePopularity != null;

  // "exercise_is_visible" field.
  bool? _exerciseIsVisible;
  bool get exerciseIsVisible => _exerciseIsVisible ?? false;
  bool hasExerciseIsVisible() => _exerciseIsVisible != null;

  // "exercise_is_deletable" field.
  bool? _exerciseIsDeletable;
  bool get exerciseIsDeletable => _exerciseIsDeletable ?? false;
  bool hasExerciseIsDeletable() => _exerciseIsDeletable != null;

  // "exercise_last_used" field.
  DateTime? _exerciseLastUsed;
  DateTime? get exerciseLastUsed => _exerciseLastUsed;
  bool hasExerciseLastUsed() => _exerciseLastUsed != null;

  // "exercise_set_ref" field.
  List<DocumentReference>? _exerciseSetRef;
  List<DocumentReference> get exerciseSetRef => _exerciseSetRef ?? const [];
  bool hasExerciseSetRef() => _exerciseSetRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _exerciseE1RM = snapshotData['exercise_e1RM'] as String?;
    _exerciseOwner = snapshotData['exercise_owner'] as DocumentReference?;
    _exerciseIcon = snapshotData['exercise_icon'] as String?;
    _userid = snapshotData['userid'] as String?;
    _exerciseType = snapshotData['exercise_type'] as String?;
    _exercisePopularity = castToType<int>(snapshotData['exercise_popularity']);
    _exerciseIsVisible = snapshotData['exercise_is_visible'] as bool?;
    _exerciseIsDeletable = snapshotData['exercise_is_deletable'] as bool?;
    _exerciseLastUsed = snapshotData['exercise_last_used'] as DateTime?;
    _exerciseSetRef = getDataList(snapshotData['exercise_set_ref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exercise');

  static Stream<ExerciseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExerciseRecord.fromSnapshot(s));

  static Future<ExerciseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExerciseRecord.fromSnapshot(s));

  static ExerciseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExerciseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExerciseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExerciseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExerciseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExerciseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExerciseRecordData({
  String? name,
  String? exerciseE1RM,
  DocumentReference? exerciseOwner,
  String? exerciseIcon,
  String? userid,
  String? exerciseType,
  int? exercisePopularity,
  bool? exerciseIsVisible,
  bool? exerciseIsDeletable,
  DateTime? exerciseLastUsed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'exercise_e1RM': exerciseE1RM,
      'exercise_owner': exerciseOwner,
      'exercise_icon': exerciseIcon,
      'userid': userid,
      'exercise_type': exerciseType,
      'exercise_popularity': exercisePopularity,
      'exercise_is_visible': exerciseIsVisible,
      'exercise_is_deletable': exerciseIsDeletable,
      'exercise_last_used': exerciseLastUsed,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExerciseRecordDocumentEquality implements Equality<ExerciseRecord> {
  const ExerciseRecordDocumentEquality();

  @override
  bool equals(ExerciseRecord? e1, ExerciseRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.exerciseE1RM == e2?.exerciseE1RM &&
        e1?.exerciseOwner == e2?.exerciseOwner &&
        e1?.exerciseIcon == e2?.exerciseIcon &&
        e1?.userid == e2?.userid &&
        e1?.exerciseType == e2?.exerciseType &&
        e1?.exercisePopularity == e2?.exercisePopularity &&
        e1?.exerciseIsVisible == e2?.exerciseIsVisible &&
        e1?.exerciseIsDeletable == e2?.exerciseIsDeletable &&
        e1?.exerciseLastUsed == e2?.exerciseLastUsed &&
        listEquality.equals(e1?.exerciseSetRef, e2?.exerciseSetRef);
  }

  @override
  int hash(ExerciseRecord? e) => const ListEquality().hash([
        e?.name,
        e?.exerciseE1RM,
        e?.exerciseOwner,
        e?.exerciseIcon,
        e?.userid,
        e?.exerciseType,
        e?.exercisePopularity,
        e?.exerciseIsVisible,
        e?.exerciseIsDeletable,
        e?.exerciseLastUsed,
        e?.exerciseSetRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ExerciseRecord;
}
