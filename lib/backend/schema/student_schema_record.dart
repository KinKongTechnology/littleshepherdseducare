import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentSchemaRecord extends FirestoreRecord {
  StudentSchemaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "standard" field.
  String? _standard;
  String get standard => _standard ?? '';
  bool hasStandard() => _standard != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "classes_name" field.
  String? _classesName;
  String get classesName => _classesName ?? '';
  bool hasClassesName() => _classesName != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "student_image" field.
  String? _studentImage;
  String get studentImage => _studentImage ?? '';
  bool hasStudentImage() => _studentImage != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

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

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "monthly_fees" field.
  int? _monthlyFees;
  int get monthlyFees => _monthlyFees ?? 0;
  bool hasMonthlyFees() => _monthlyFees != null;

  // "dine_fees" field.
  int? _dineFees;
  int get dineFees => _dineFees ?? 0;
  bool hasDineFees() => _dineFees != null;

  // "transport_fees" field.
  int? _transportFees;
  int get transportFees => _transportFees ?? 0;
  bool hasTransportFees() => _transportFees != null;

  // "passwords" field.
  String? _passwords;
  String get passwords => _passwords ?? '';
  bool hasPasswords() => _passwords != null;

  // "teachers_name" field.
  String? _teachersName;
  String get teachersName => _teachersName ?? '';
  bool hasTeachersName() => _teachersName != null;

  // "daily_fees" field.
  int? _dailyFees;
  int get dailyFees => _dailyFees ?? 0;
  bool hasDailyFees() => _dailyFees != null;

  // "extension_fees" field.
  int? _extensionFees;
  int get extensionFees => _extensionFees ?? 0;
  bool hasExtensionFees() => _extensionFees != null;

  // "per_subject_fees" field.
  int? _perSubjectFees;
  int get perSubjectFees => _perSubjectFees ?? 0;
  bool hasPerSubjectFees() => _perSubjectFees != null;

  // "full_subject_fees" field.
  int? _fullSubjectFees;
  int get fullSubjectFees => _fullSubjectFees ?? 0;
  bool hasFullSubjectFees() => _fullSubjectFees != null;

  // "online_fees" field.
  int? _onlineFees;
  int get onlineFees => _onlineFees ?? 0;
  bool hasOnlineFees() => _onlineFees != null;

  // "offline_fees" field.
  int? _offlineFees;
  int get offlineFees => _offlineFees ?? 0;
  bool hasOfflineFees() => _offlineFees != null;

  // "student_chinese" field.
  String? _studentChinese;
  String get studentChinese => _studentChinese ?? '';
  bool hasStudentChinese() => _studentChinese != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "race" field.
  String? _race;
  String get race => _race ?? '';
  bool hasRace() => _race != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  bool hasReligion() => _religion != null;

  // "mum_name" field.
  String? _mumName;
  String get mumName => _mumName ?? '';
  bool hasMumName() => _mumName != null;

  // "mum_contact_number" field.
  String? _mumContactNumber;
  String get mumContactNumber => _mumContactNumber ?? '';
  bool hasMumContactNumber() => _mumContactNumber != null;

  // "mum_occupation" field.
  String? _mumOccupation;
  String get mumOccupation => _mumOccupation ?? '';
  bool hasMumOccupation() => _mumOccupation != null;

  // "dad_name" field.
  String? _dadName;
  String get dadName => _dadName ?? '';
  bool hasDadName() => _dadName != null;

  // "dad_number" field.
  String? _dadNumber;
  String get dadNumber => _dadNumber ?? '';
  bool hasDadNumber() => _dadNumber != null;

  // "dad_occupation" field.
  String? _dadOccupation;
  String get dadOccupation => _dadOccupation ?? '';
  bool hasDadOccupation() => _dadOccupation != null;

  // "allergy_food" field.
  String? _allergyFood;
  String get allergyFood => _allergyFood ?? '';
  bool hasAllergyFood() => _allergyFood != null;

  // "list_allergy_foods" field.
  String? _listAllergyFoods;
  String get listAllergyFoods => _listAllergyFoods ?? '';
  bool hasListAllergyFoods() => _listAllergyFoods != null;

  // "phobia" field.
  String? _phobia;
  String get phobia => _phobia ?? '';
  bool hasPhobia() => _phobia != null;

  // "extra_note" field.
  String? _extraNote;
  String get extraNote => _extraNote ?? '';
  bool hasExtraNote() => _extraNote != null;

  // "additional_info" field.
  String? _additionalInfo;
  String get additionalInfo => _additionalInfo ?? '';
  bool hasAdditionalInfo() => _additionalInfo != null;

  void _initializeFields() {
    _standard = snapshotData['standard'] as String?;
    _studentName = snapshotData['student_name'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
    _classesName = snapshotData['classes_name'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _studentImage = snapshotData['student_image'] as String?;
    _category = snapshotData['category'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _monthlyFees = castToType<int>(snapshotData['monthly_fees']);
    _dineFees = castToType<int>(snapshotData['dine_fees']);
    _transportFees = castToType<int>(snapshotData['transport_fees']);
    _passwords = snapshotData['passwords'] as String?;
    _teachersName = snapshotData['teachers_name'] as String?;
    _dailyFees = castToType<int>(snapshotData['daily_fees']);
    _extensionFees = castToType<int>(snapshotData['extension_fees']);
    _perSubjectFees = castToType<int>(snapshotData['per_subject_fees']);
    _fullSubjectFees = castToType<int>(snapshotData['full_subject_fees']);
    _onlineFees = castToType<int>(snapshotData['online_fees']);
    _offlineFees = castToType<int>(snapshotData['offline_fees']);
    _studentChinese = snapshotData['student_chinese'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _dob = snapshotData['dob'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _race = snapshotData['race'] as String?;
    _religion = snapshotData['religion'] as String?;
    _mumName = snapshotData['mum_name'] as String?;
    _mumContactNumber = snapshotData['mum_contact_number'] as String?;
    _mumOccupation = snapshotData['mum_occupation'] as String?;
    _dadName = snapshotData['dad_name'] as String?;
    _dadNumber = snapshotData['dad_number'] as String?;
    _dadOccupation = snapshotData['dad_occupation'] as String?;
    _allergyFood = snapshotData['allergy_food'] as String?;
    _listAllergyFoods = snapshotData['list_allergy_foods'] as String?;
    _phobia = snapshotData['phobia'] as String?;
    _extraNote = snapshotData['extra_note'] as String?;
    _additionalInfo = snapshotData['additional_info'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('student_schema');

  static Stream<StudentSchemaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentSchemaRecord.fromSnapshot(s));

  static Future<StudentSchemaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentSchemaRecord.fromSnapshot(s));

  static StudentSchemaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentSchemaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentSchemaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentSchemaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentSchemaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentSchemaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentSchemaRecordData({
  String? standard,
  String? studentName,
  String? schoolName,
  String? classesName,
  String? remarks,
  String? studentImage,
  String? category,
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  int? monthlyFees,
  int? dineFees,
  int? transportFees,
  String? passwords,
  String? teachersName,
  int? dailyFees,
  int? extensionFees,
  int? perSubjectFees,
  int? fullSubjectFees,
  int? onlineFees,
  int? offlineFees,
  String? studentChinese,
  int? age,
  DateTime? dob,
  String? gender,
  String? race,
  String? religion,
  String? mumName,
  String? mumContactNumber,
  String? mumOccupation,
  String? dadName,
  String? dadNumber,
  String? dadOccupation,
  String? allergyFood,
  String? listAllergyFoods,
  String? phobia,
  String? extraNote,
  String? additionalInfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'standard': standard,
      'student_name': studentName,
      'school_name': schoolName,
      'classes_name': classesName,
      'remarks': remarks,
      'student_image': studentImage,
      'category': category,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'monthly_fees': monthlyFees,
      'dine_fees': dineFees,
      'transport_fees': transportFees,
      'passwords': passwords,
      'teachers_name': teachersName,
      'daily_fees': dailyFees,
      'extension_fees': extensionFees,
      'per_subject_fees': perSubjectFees,
      'full_subject_fees': fullSubjectFees,
      'online_fees': onlineFees,
      'offline_fees': offlineFees,
      'student_chinese': studentChinese,
      'age': age,
      'dob': dob,
      'gender': gender,
      'race': race,
      'religion': religion,
      'mum_name': mumName,
      'mum_contact_number': mumContactNumber,
      'mum_occupation': mumOccupation,
      'dad_name': dadName,
      'dad_number': dadNumber,
      'dad_occupation': dadOccupation,
      'allergy_food': allergyFood,
      'list_allergy_foods': listAllergyFoods,
      'phobia': phobia,
      'extra_note': extraNote,
      'additional_info': additionalInfo,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentSchemaRecordDocumentEquality
    implements Equality<StudentSchemaRecord> {
  const StudentSchemaRecordDocumentEquality();

  @override
  bool equals(StudentSchemaRecord? e1, StudentSchemaRecord? e2) {
    return e1?.standard == e2?.standard &&
        e1?.studentName == e2?.studentName &&
        e1?.schoolName == e2?.schoolName &&
        e1?.classesName == e2?.classesName &&
        e1?.remarks == e2?.remarks &&
        e1?.studentImage == e2?.studentImage &&
        e1?.category == e2?.category &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.monthlyFees == e2?.monthlyFees &&
        e1?.dineFees == e2?.dineFees &&
        e1?.transportFees == e2?.transportFees &&
        e1?.passwords == e2?.passwords &&
        e1?.teachersName == e2?.teachersName &&
        e1?.dailyFees == e2?.dailyFees &&
        e1?.extensionFees == e2?.extensionFees &&
        e1?.perSubjectFees == e2?.perSubjectFees &&
        e1?.fullSubjectFees == e2?.fullSubjectFees &&
        e1?.onlineFees == e2?.onlineFees &&
        e1?.offlineFees == e2?.offlineFees &&
        e1?.studentChinese == e2?.studentChinese &&
        e1?.age == e2?.age &&
        e1?.dob == e2?.dob &&
        e1?.gender == e2?.gender &&
        e1?.race == e2?.race &&
        e1?.religion == e2?.religion &&
        e1?.mumName == e2?.mumName &&
        e1?.mumContactNumber == e2?.mumContactNumber &&
        e1?.mumOccupation == e2?.mumOccupation &&
        e1?.dadName == e2?.dadName &&
        e1?.dadNumber == e2?.dadNumber &&
        e1?.dadOccupation == e2?.dadOccupation &&
        e1?.allergyFood == e2?.allergyFood &&
        e1?.listAllergyFoods == e2?.listAllergyFoods &&
        e1?.phobia == e2?.phobia &&
        e1?.extraNote == e2?.extraNote &&
        e1?.additionalInfo == e2?.additionalInfo;
  }

  @override
  int hash(StudentSchemaRecord? e) => const ListEquality().hash([
        e?.standard,
        e?.studentName,
        e?.schoolName,
        e?.classesName,
        e?.remarks,
        e?.studentImage,
        e?.category,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.monthlyFees,
        e?.dineFees,
        e?.transportFees,
        e?.passwords,
        e?.teachersName,
        e?.dailyFees,
        e?.extensionFees,
        e?.perSubjectFees,
        e?.fullSubjectFees,
        e?.onlineFees,
        e?.offlineFees,
        e?.studentChinese,
        e?.age,
        e?.dob,
        e?.gender,
        e?.race,
        e?.religion,
        e?.mumName,
        e?.mumContactNumber,
        e?.mumOccupation,
        e?.dadName,
        e?.dadNumber,
        e?.dadOccupation,
        e?.allergyFood,
        e?.listAllergyFoods,
        e?.phobia,
        e?.extraNote,
        e?.additionalInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentSchemaRecord;
}
