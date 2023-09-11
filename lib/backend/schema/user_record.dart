import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "user_password" field.
  String? _userPassword;
  String get userPassword => _userPassword ?? '';
  bool hasUserPassword() => _userPassword != null;

  // "user_filter_jumps" field.
  bool? _userFilterJumps;
  bool get userFilterJumps => _userFilterJumps ?? false;
  bool hasUserFilterJumps() => _userFilterJumps != null;

  // "user_eccentric" field.
  bool? _userEccentric;
  bool get userEccentric => _userEccentric ?? false;
  bool hasUserEccentric() => _userEccentric != null;

  // "user_show_fatigue" field.
  bool? _userShowFatigue;
  bool get userShowFatigue => _userShowFatigue ?? false;
  bool hasUserShowFatigue() => _userShowFatigue != null;

  // "user_units" field.
  String? _userUnits;
  String get userUnits => _userUnits ?? '';
  bool hasUserUnits() => _userUnits != null;

  // "user_lifter_experience" field.
  String? _userLifterExperience;
  String get userLifterExperience => _userLifterExperience ?? '';
  bool hasUserLifterExperience() => _userLifterExperience != null;

  // "user_region" field.
  String? _userRegion;
  String get userRegion => _userRegion ?? '';
  bool hasUserRegion() => _userRegion != null;

  // "user_height" field.
  String? _userHeight;
  String get userHeight => _userHeight ?? '';
  bool hasUserHeight() => _userHeight != null;

  // "user_date_of_birth" field.
  DateTime? _userDateOfBirth;
  DateTime? get userDateOfBirth => _userDateOfBirth;
  bool hasUserDateOfBirth() => _userDateOfBirth != null;

  // "user_weight" field.
  String? _userWeight;
  String get userWeight => _userWeight ?? '';
  bool hasUserWeight() => _userWeight != null;

  // "creation_date" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "user_sportAndPosition" field.
  List<DocumentReference>? _userSportAndPosition;
  List<DocumentReference> get userSportAndPosition =>
      _userSportAndPosition ?? const [];
  bool hasUserSportAndPosition() => _userSportAndPosition != null;

  // "user_height_unit" field.
  String? _userHeightUnit;
  String get userHeightUnit => _userHeightUnit ?? '';
  bool hasUserHeightUnit() => _userHeightUnit != null;

  // "user_weight_unit" field.
  String? _userWeightUnit;
  String get userWeightUnit => _userWeightUnit ?? '';
  bool hasUserWeightUnit() => _userWeightUnit != null;

  // "user_velocity_or_jump" field.
  String? _userVelocityOrJump;
  String get userVelocityOrJump => _userVelocityOrJump ?? '';
  bool hasUserVelocityOrJump() => _userVelocityOrJump != null;

  // "user_viewData_exercise" field.
  String? _userViewDataExercise;
  String get userViewDataExercise => _userViewDataExercise ?? '';
  bool hasUserViewDataExercise() => _userViewDataExercise != null;

  // "user_viewdata_exercise" field.
  DocumentReference? _userViewdataExercise;
  DocumentReference? get userViewdataExercise => _userViewdataExercise;
  bool hasUserViewdataExercise() => _userViewdataExercise != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _userPassword = snapshotData['user_password'] as String?;
    _userFilterJumps = snapshotData['user_filter_jumps'] as bool?;
    _userEccentric = snapshotData['user_eccentric'] as bool?;
    _userShowFatigue = snapshotData['user_show_fatigue'] as bool?;
    _userUnits = snapshotData['user_units'] as String?;
    _userLifterExperience = snapshotData['user_lifter_experience'] as String?;
    _userRegion = snapshotData['user_region'] as String?;
    _userHeight = snapshotData['user_height'] as String?;
    _userDateOfBirth = snapshotData['user_date_of_birth'] as DateTime?;
    _userWeight = snapshotData['user_weight'] as String?;
    _creationDate = snapshotData['creation_date'] as DateTime?;
    _userSportAndPosition = getDataList(snapshotData['user_sportAndPosition']);
    _userHeightUnit = snapshotData['user_height_unit'] as String?;
    _userWeightUnit = snapshotData['user_weight_unit'] as String?;
    _userVelocityOrJump = snapshotData['user_velocity_or_jump'] as String?;
    _userViewDataExercise = snapshotData['user_viewData_exercise'] as String?;
    _userViewdataExercise =
        snapshotData['user_viewdata_exercise'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? username,
  String? userPassword,
  bool? userFilterJumps,
  bool? userEccentric,
  bool? userShowFatigue,
  String? userUnits,
  String? userLifterExperience,
  String? userRegion,
  String? userHeight,
  DateTime? userDateOfBirth,
  String? userWeight,
  DateTime? creationDate,
  String? userHeightUnit,
  String? userWeightUnit,
  String? userVelocityOrJump,
  String? userViewDataExercise,
  DocumentReference? userViewdataExercise,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'username': username,
      'user_password': userPassword,
      'user_filter_jumps': userFilterJumps,
      'user_eccentric': userEccentric,
      'user_show_fatigue': userShowFatigue,
      'user_units': userUnits,
      'user_lifter_experience': userLifterExperience,
      'user_region': userRegion,
      'user_height': userHeight,
      'user_date_of_birth': userDateOfBirth,
      'user_weight': userWeight,
      'creation_date': creationDate,
      'user_height_unit': userHeightUnit,
      'user_weight_unit': userWeightUnit,
      'user_velocity_or_jump': userVelocityOrJump,
      'user_viewData_exercise': userViewDataExercise,
      'user_viewdata_exercise': userViewdataExercise,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.userPassword == e2?.userPassword &&
        e1?.userFilterJumps == e2?.userFilterJumps &&
        e1?.userEccentric == e2?.userEccentric &&
        e1?.userShowFatigue == e2?.userShowFatigue &&
        e1?.userUnits == e2?.userUnits &&
        e1?.userLifterExperience == e2?.userLifterExperience &&
        e1?.userRegion == e2?.userRegion &&
        e1?.userHeight == e2?.userHeight &&
        e1?.userDateOfBirth == e2?.userDateOfBirth &&
        e1?.userWeight == e2?.userWeight &&
        e1?.creationDate == e2?.creationDate &&
        listEquality.equals(
            e1?.userSportAndPosition, e2?.userSportAndPosition) &&
        e1?.userHeightUnit == e2?.userHeightUnit &&
        e1?.userWeightUnit == e2?.userWeightUnit &&
        e1?.userVelocityOrJump == e2?.userVelocityOrJump &&
        e1?.userViewDataExercise == e2?.userViewDataExercise &&
        e1?.userViewdataExercise == e2?.userViewdataExercise;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.username,
        e?.userPassword,
        e?.userFilterJumps,
        e?.userEccentric,
        e?.userShowFatigue,
        e?.userUnits,
        e?.userLifterExperience,
        e?.userRegion,
        e?.userHeight,
        e?.userDateOfBirth,
        e?.userWeight,
        e?.creationDate,
        e?.userSportAndPosition,
        e?.userHeightUnit,
        e?.userWeightUnit,
        e?.userVelocityOrJump,
        e?.userViewDataExercise,
        e?.userViewdataExercise
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
