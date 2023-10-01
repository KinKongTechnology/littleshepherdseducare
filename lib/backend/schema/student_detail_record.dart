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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "parent_name" field.
  String? _parentName;
  String get parentName => _parentName ?? '';
  bool hasParentName() => _parentName != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "classes" field.
  String? _classes;
  String get classes => _classes ?? '';
  bool hasClasses() => _classes != null;

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

  void _initializeFields() {
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _studentName = snapshotData['student_name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _contact = snapshotData['contact'] as String?;
    _parentName = snapshotData['parent_name'] as String?;
    _rate = castToType<double>(snapshotData['rate']);
    _category = snapshotData['category'] as String?;
    _classes = snapshotData['classes'] as String?;
    _profileImage = snapshotData['profileImage'] as String?;
    _modifiedTime = snapshotData['ModifiedTime'] as DateTime?;
    _classLeader = snapshotData['class_leader'] as bool?;
    _pinCode = castToType<int>(snapshotData['pin_code']);
    _address = snapshotData['address'] as String?;
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
  String? email,
  String? password,
  String? contact,
  String? parentName,
  double? rate,
  String? category,
  String? classes,
  String? profileImage,
  DateTime? modifiedTime,
  bool? classLeader,
  int? pinCode,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdTime': createdTime,
      'student_name': studentName,
      'email': email,
      'password': password,
      'contact': contact,
      'parent_name': parentName,
      'rate': rate,
      'category': category,
      'classes': classes,
      'profileImage': profileImage,
      'ModifiedTime': modifiedTime,
      'class_leader': classLeader,
      'pin_code': pinCode,
      'address': address,
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
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.contact == e2?.contact &&
        e1?.parentName == e2?.parentName &&
        e1?.rate == e2?.rate &&
        e1?.category == e2?.category &&
        e1?.classes == e2?.classes &&
        e1?.profileImage == e2?.profileImage &&
        e1?.modifiedTime == e2?.modifiedTime &&
        e1?.classLeader == e2?.classLeader &&
        e1?.pinCode == e2?.pinCode &&
        e1?.address == e2?.address;
  }

  @override
  int hash(StudentDetailRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.studentName,
        e?.email,
        e?.password,
        e?.contact,
        e?.parentName,
        e?.rate,
        e?.category,
        e?.classes,
        e?.profileImage,
        e?.modifiedTime,
        e?.classLeader,
        e?.pinCode,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentDetailRecord;
}
