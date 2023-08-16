import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrivacyPolicyTableRecord extends FirestoreRecord {
  PrivacyPolicyTableRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "Collected" field.
  String? _collected;
  String get collected => _collected ?? '';
  bool hasCollected() => _collected != null;

  // "Examples" field.
  String? _examples;
  String get examples => _examples ?? '';
  bool hasExamples() => _examples != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _category = snapshotData['Category'] as String?;
    _collected = snapshotData['Collected'] as String?;
    _examples = snapshotData['Examples'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('privacy_policy_table');

  static Stream<PrivacyPolicyTableRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrivacyPolicyTableRecord.fromSnapshot(s));

  static Future<PrivacyPolicyTableRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PrivacyPolicyTableRecord.fromSnapshot(s));

  static PrivacyPolicyTableRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrivacyPolicyTableRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrivacyPolicyTableRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrivacyPolicyTableRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrivacyPolicyTableRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrivacyPolicyTableRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrivacyPolicyTableRecordData({
  String? category,
  String? collected,
  String? examples,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Category': category,
      'Collected': collected,
      'Examples': examples,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrivacyPolicyTableRecordDocumentEquality
    implements Equality<PrivacyPolicyTableRecord> {
  const PrivacyPolicyTableRecordDocumentEquality();

  @override
  bool equals(PrivacyPolicyTableRecord? e1, PrivacyPolicyTableRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.collected == e2?.collected &&
        e1?.examples == e2?.examples &&
        e1?.order == e2?.order;
  }

  @override
  int hash(PrivacyPolicyTableRecord? e) => const ListEquality()
      .hash([e?.category, e?.collected, e?.examples, e?.order]);

  @override
  bool isValidKey(Object? o) => o is PrivacyPolicyTableRecord;
}
