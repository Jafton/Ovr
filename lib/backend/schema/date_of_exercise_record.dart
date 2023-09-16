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

  // "set_reference" field.
  List<DocumentReference>? _setReference;
  List<DocumentReference> get setReference => _setReference ?? const [];
  bool hasSetReference() => _setReference != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _creationDate = snapshotData['creation_date'] as DateTime?;
    _setReference = getDataList(snapshotData['set_reference']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creation_date': creationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class DateOfExerciseRecordDocumentEquality
    implements Equality<DateOfExerciseRecord> {
  const DateOfExerciseRecordDocumentEquality();

  @override
  bool equals(DateOfExerciseRecord? e1, DateOfExerciseRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creationDate == e2?.creationDate &&
        listEquality.equals(e1?.setReference, e2?.setReference);
  }

  @override
  int hash(DateOfExerciseRecord? e) =>
      const ListEquality().hash([e?.creationDate, e?.setReference]);

  @override
  bool isValidKey(Object? o) => o is DateOfExerciseRecord;
}
