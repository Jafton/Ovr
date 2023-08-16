import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportsRecord extends FirestoreRecord {
  SportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sports');

  static Stream<SportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SportsRecord.fromSnapshot(s));

  static Future<SportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SportsRecord.fromSnapshot(s));

  static SportsRecord fromSnapshot(DocumentSnapshot snapshot) => SportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSportsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class SportsRecordDocumentEquality implements Equality<SportsRecord> {
  const SportsRecordDocumentEquality();

  @override
  bool equals(SportsRecord? e1, SportsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(SportsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is SportsRecord;
}
