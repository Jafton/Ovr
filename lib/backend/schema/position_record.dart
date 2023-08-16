import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PositionRecord extends FirestoreRecord {
  PositionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "position_name" field.
  String? _positionName;
  String get positionName => _positionName ?? '';
  bool hasPositionName() => _positionName != null;

  // "short" field.
  String? _short;
  String get short => _short ?? '';
  bool hasShort() => _short != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _positionName = snapshotData['position_name'] as String?;
    _short = snapshotData['short'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('position')
          : FirebaseFirestore.instance.collectionGroup('position');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('position').doc();

  static Stream<PositionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PositionRecord.fromSnapshot(s));

  static Future<PositionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PositionRecord.fromSnapshot(s));

  static PositionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PositionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PositionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PositionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PositionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PositionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPositionRecordData({
  String? positionName,
  String? short,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'position_name': positionName,
      'short': short,
    }.withoutNulls,
  );

  return firestoreData;
}

class PositionRecordDocumentEquality implements Equality<PositionRecord> {
  const PositionRecordDocumentEquality();

  @override
  bool equals(PositionRecord? e1, PositionRecord? e2) {
    return e1?.positionName == e2?.positionName && e1?.short == e2?.short;
  }

  @override
  int hash(PositionRecord? e) =>
      const ListEquality().hash([e?.positionName, e?.short]);

  @override
  bool isValidKey(Object? o) => o is PositionRecord;
}
