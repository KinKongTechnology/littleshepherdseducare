import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentDetailRecord extends FirestoreRecord {
  StudentDetailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "profileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "ModifiedTime" field.
  DateTime? _modifiedTime;
  DateTime? get modifiedTime => _modifiedTime;
  bool hasModifiedTime() => _modifiedTime != null;

  // "class_leader" field.
  bool? _classLeader;
  bool get classLeader => _classLeader ?? false;
  bool hasClassLeader() => _classLeader != null;

  // "pin_code" field.
  int? _pinCode;
  int get pinCode => _pinCode ?? 0;
  bool hasPinCode() => _pinCode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "mum_name" field.
  String? _mumName;
  String get mumName => _mumName ?? '';
  bool hasMumName() => _mumName != null;

  // "mum_contact" field.
  String? _mumContact;
  String get mumContact => _mumContact ?? '';
  bool hasMumContact() => _mumContact != null;

  // "mum_occupation" field.
  String? _mumOccupation;
  String get mumOccupation => _mumOccupation ?? '';
  bool hasMumOccupation() => _mumOccupation != null;

  // "dad_name" field.
  String? _dadName;
  String get dadName => _dadName ?? '';
  bool hasDadName() => _dadName != null;

  // "dad_contact" field.
  String? _dadContact;
  String get dadContact => _dadContact ?? '';
  bool hasDadContact() => _dadContact != null;

  // "dad_occupation" field.
  String? _dadOccupation;
  String get dadOccupation => _dadOccupation ?? '';
  bool hasDadOccupation() => _dadOccupation != null;

  // "food_allergy" field.
  String? _foodAllergy;
  String get foodAllergy => _foodAllergy ?? '';
  bool hasFoodAllergy() => _foodAllergy != null;

  // "list_food_allergy" field.
  String? _listFoodAllergy;
  String get listFoodAllergy => _listFoodAllergy ?? '';
  bool hasListFoodAllergy() => _listFoodAllergy != null;

  // "Phobia" field.
  String? _phobia;
  String get phobia => _phobia ?? '';
  bool hasPhobia() => _phobia != null;

  // "type_class" field.
  String? _typeClass;
  String get typeClass => _typeClass ?? '';
  bool hasTypeClass() => _typeClass != null;

  // "standard" field.
  String? _standard;
  String get standard => _standard ?? '';
  bool hasStandard() => _standard != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "extra_care_note" field.
  String? _extraCareNote;
  String get extraCareNote => _extraCareNote ?? '';
  bool hasExtraCareNote() => _extraCareNote != null;

  // "race" field.
  String? _race;
  String get race => _race ?? '';
  bool hasRace() => _race != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  bool hasReligion() => _religion != null;

  // "email" field.
  DocumentReference? _email;
  DocumentReference? get email => _email;
  bool hasEmail() => _email != null;

  // "password" field.
  DocumentReference? _password;
  DocumentReference? get password => _password;
  bool hasPassword() => _password != null;

  // "student_chinese_name" field.
  String? _studentChineseName;
  String get studentChineseName => _studentChineseName ?? '';
  bool hasStudentChineseName() => _studentChineseName != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "addtional_info" field.
  String? _addtionalInfo;
  String get addtionalInfo => _addtionalInfo ?? '';
  bool hasAddtionalInfo() => _addtionalInfo != null;

  void _initializeFields() {
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _studentName = snapshotData['student_name'] as String?;
    _rate = castToType<double>(snapshotData['rate']);
    _profileImage = snapshotData['profileImage'] as String?;
    _modifiedTime = snapshotData['ModifiedTime'] as DateTime?;
    _classLeader = snapshotData['class_leader'] as bool?;
    _pinCode = castToType<int>(snapshotData['pin_code']);
    _address = snapshotData['address'] as String?;
    _mumName = snapshotData['mum_name'] as String?;
    _mumContact = snapshotData['mum_contact'] as String?;
    _mumOccupation = snapshotData['mum_occupation'] as String?;
    _dadName = snapshotData['dad_name'] as String?;
    _dadContact = snapshotData['dad_contact'] as String?;
    _dadOccupation = snapshotData['dad_occupation'] as String?;
    _foodAllergy = snapshotData['food_allergy'] as String?;
    _listFoodAllergy = snapshotData['list_food_allergy'] as String?;
    _phobia = snapshotData['Phobia'] as String?;
    _typeClass = snapshotData['type_class'] as String?;
    _standard = snapshotData['standard'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
    _extraCareNote = snapshotData['extra_care_note'] as String?;
    _race = snapshotData['race'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
    _religion = snapshotData['religion'] as String?;
    _email = snapshotData['email'] as DocumentReference?;
    _password = snapshotData['password'] as DocumentReference?;
    _studentChineseName = snapshotData['student_chinese_name'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _addtionalInfo = snapshotData['addtional_info'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('student_detail');

  static Stream<StudentDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentDetailRecord.fromSnapshot(s));

  static Future<StudentDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentDetailRecord.fromSnapshot(s));

  static StudentDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentDetailRecordData({
  DateTime? createdTime,
  String? studentName,
  double? rate,
  String? profileImage,
  DateTime? modifiedTime,
  bool? classLeader,
  int? pinCode,
  String? address,
  String? mumName,
  String? mumContact,
  String? mumOccupation,
  String? dadName,
  String? dadContact,
  String? dadOccupation,
  String? foodAllergy,
  String? listFoodAllergy,
  String? phobia,
  String? typeClass,
  String? standard,
  String? schoolName,
  String? extraCareNote,
  String? race,
  String? gender,
  DateTime? dateOfBirth,
  String? religion,
  DocumentReference? email,
  DocumentReference? password,
  String? studentChineseName,
  int? age,
  String? addtionalInfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdTime': createdTime,
      'student_name': studentName,
      'rate': rate,
      'profileImage': profileImage,
      'ModifiedTime': modifiedTime,
      'class_leader': classLeader,
      'pin_code': pinCode,
      'address': address,
      'mum_name': mumName,
      'mum_contact': mumContact,
      'mum_occupation': mumOccupation,
      'dad_name': dadName,
      'dad_contact': dadContact,
      'dad_occupation': dadOccupation,
      'food_allergy': foodAllergy,
      'list_food_allergy': listFoodAllergy,
      'Phobia': phobia,
      'type_class': typeClass,
      'standard': standard,
      'school_name': schoolName,
      'extra_care_note': extraCareNote,
      'race': race,
      'gender': gender,
      'date_of_birth': dateOfBirth,
      'religion': religion,
      'email': email,
      'password': password,
      'student_chinese_name': studentChineseName,
      'age': age,
      'addtional_info': addtionalInfo,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentDetailRecordDocumentEquality
    implements Equality<StudentDetailRecord> {
  const StudentDetailRecordDocumentEquality();

  @override
  bool equals(StudentDetailRecord? e1, StudentDetailRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.studentName == e2?.studentName &&
        e1?.rate == e2?.rate &&
        e1?.profileImage == e2?.profileImage &&
        e1?.modifiedTime == e2?.modifiedTime &&
        e1?.classLeader == e2?.classLeader &&
        e1?.pinCode == e2?.pinCode &&
        e1?.address == e2?.address &&
        e1?.mumName == e2?.mumName &&
        e1?.mumContact == e2?.mumContact &&
        e1?.mumOccupation == e2?.mumOccupation &&
        e1?.dadName == e2?.dadName &&
        e1?.dadContact == e2?.dadContact &&
        e1?.dadOccupation == e2?.dadOccupation &&
        e1?.foodAllergy == e2?.foodAllergy &&
        e1?.listFoodAllergy == e2?.listFoodAllergy &&
        e1?.phobia == e2?.phobia &&
        e1?.typeClass == e2?.typeClass &&
        e1?.standard == e2?.standard &&
        e1?.schoolName == e2?.schoolName &&
        e1?.extraCareNote == e2?.extraCareNote &&
        e1?.race == e2?.race &&
        e1?.gender == e2?.gender &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.religion == e2?.religion &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.studentChineseName == e2?.studentChineseName &&
        e1?.age == e2?.age &&
        e1?.addtionalInfo == e2?.addtionalInfo;
  }

  @override
  int hash(StudentDetailRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.studentName,
        e?.rate,
        e?.profileImage,
        e?.modifiedTime,
        e?.classLeader,
        e?.pinCode,
        e?.address,
        e?.mumName,
        e?.mumContact,
        e?.mumOccupation,
        e?.dadName,
        e?.dadContact,
        e?.dadOccupation,
        e?.foodAllergy,
        e?.listFoodAllergy,
        e?.phobia,
        e?.typeClass,
        e?.standard,
        e?.schoolName,
        e?.extraCareNote,
        e?.race,
        e?.gender,
        e?.dateOfBirth,
        e?.religion,
        e?.email,
        e?.password,
        e?.studentChineseName,
        e?.age,
        e?.addtionalInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentDetailRecord;
}
