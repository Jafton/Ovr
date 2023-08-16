import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportAndPositionRecord extends FirestoreRecord {
  SportAndPositionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sport" field.
  String? _sport;
  String get sport => _sport ?? '';
  bool hasSport() => _sport != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "sportRef" field.
  DocumentReference? _sportRef;
  DocumentReference? get sportRef => _sportRef;
  bool hasSportRef() => _sportRef != null;

  // "creation_date" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sport = snapshotData['sport'] as String?;
    _position = snapshotData['position'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _sportRef = snapshotData['sportRef'] as DocumentReference?;
    _creationDate = snapshotData['creation_date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sportAndPosition')
          : FirebaseFirestore.instance.collectionGroup('sportAndPosition');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('sportAndPosition').doc();

  static Stream<SportAndPositionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SportAndPositionRecord.fromSnapshot(s));

  static Future<SportAndPositionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SportAndPositionRecord.fromSnapshot(s));

  static SportAndPositionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SportAndPositionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SportAndPositionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SportAndPositionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SportAndPositionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SportAndPositionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSportAndPositionRecordData({
  String? sport,
  String? position,
  DocumentReference? owner,
  DocumentReference? sportRef,
  DateTime? creationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sport': sport,
      'position': position,
      'owner': owner,
      'sportRef': sportRef,
      'creation_date': creationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class SportAndPositionRecordDocumentEquality
    implements Equality<SportAndPositionRecord> {
  const SportAndPositionRecordDocumentEquality();

  @override
  bool equals(SportAndPositionRecord? e1, SportAndPositionRecord? e2) {
    return e1?.sport == e2?.sport &&
        e1?.position == e2?.position &&
        e1?.owner == e2?.owner &&
        e1?.sportRef == e2?.sportRef &&
        e1?.creationDate == e2?.creationDate;
  }

  @override
  int hash(SportAndPositionRecord? e) => const ListEquality()
      .hash([e?.sport, e?.position, e?.owner, e?.sportRef, e?.creationDate]);

  @override
  bool isValidKey(Object? o) => o is SportAndPositionRecord;
}
