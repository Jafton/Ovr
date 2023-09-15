import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateOfExerciseRecord extends FirestoreRecord {
  DateOfExerciseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creation_date" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "date_string" field.
  String? _dateString;
  String get dateString => _dateString ?? '';
  bool hasDateString() => _dateString != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _creationDate = snapshotData['creation_date'] as DateTime?;
    _dateString = snapshotData['date_string'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('DateOfExercise')
          : FirebaseFirestore.instance.collectionGroup('DateOfExercise');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('DateOfExercise').doc();

  static Stream<DateOfExerciseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DateOfExerciseRecord.fromSnapshot(s));

  static Future<DateOfExerciseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DateOfExerciseRecord.fromSnapshot(s));

  static DateOfExerciseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DateOfExerciseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DateOfExerciseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DateOfExerciseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DateOfExerciseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DateOfExerciseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDateOfExerciseRecordData({
  DateTime? creationDate,
  String? dateString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creation_date': creationDate,
      'date_string': dateString,
    }.withoutNulls,
  );

  return firestoreData;
}

class DateOfExerciseRecordDocumentEquality
    implements Equality<DateOfExerciseRecord> {
  const DateOfExerciseRecordDocumentEquality();

  @override
  bool equals(DateOfExerciseRecord? e1, DateOfExerciseRecord? e2) {
    return e1?.creationDate == e2?.creationDate &&
        e1?.dateString == e2?.dateString;
  }

  @override
  int hash(DateOfExerciseRecord? e) =>
      const ListEquality().hash([e?.creationDate, e?.dateString]);

  @override
  bool isValidKey(Object? o) => o is DateOfExerciseRecord;
}
