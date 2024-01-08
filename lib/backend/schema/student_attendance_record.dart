import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentAttendanceRecord extends FirestoreRecord {
  StudentAttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "present_time" field.
  DateTime? _presentTime;
  DateTime? get presentTime => _presentTime;
  bool hasPresentTime() => _presentTime != null;

  // "absent_time" field.
  DateTime? _absentTime;
  DateTime? get absentTime => _absentTime;
  bool hasAbsentTime() => _absentTime != null;

  // "late_time" field.
  DateTime? _lateTime;
  DateTime? get lateTime => _lateTime;
  bool hasLateTime() => _lateTime != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "standard" field.
  String? _standard;
  String get standard => _standard ?? '';
  bool hasStandard() => _standard != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "dine_time" field.
  DateTime? _dineTime;
  DateTime? get dineTime => _dineTime;
  bool hasDineTime() => _dineTime != null;

  // "total_present_days" field.
  int? _totalPresentDays;
  int get totalPresentDays => _totalPresentDays ?? 0;
  bool hasTotalPresentDays() => _totalPresentDays != null;

  // "total_absent_days" field.
  int? _totalAbsentDays;
  int get totalAbsentDays => _totalAbsentDays ?? 0;
  bool hasTotalAbsentDays() => _totalAbsentDays != null;

  // "total_late_days" field.
  int? _totalLateDays;
  int get totalLateDays => _totalLateDays ?? 0;
  bool hasTotalLateDays() => _totalLateDays != null;

  // "total_dine_unit" field.
  int? _totalDineUnit;
  int get totalDineUnit => _totalDineUnit ?? 0;
  bool hasTotalDineUnit() => _totalDineUnit != null;

  // "total_present_unit" field.
  int? _totalPresentUnit;
  int get totalPresentUnit => _totalPresentUnit ?? 0;
  bool hasTotalPresentUnit() => _totalPresentUnit != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _presentTime = snapshotData['present_time'] as DateTime?;
    _absentTime = snapshotData['absent_time'] as DateTime?;
    _lateTime = snapshotData['late_time'] as DateTime?;
    _studentName = snapshotData['student_name'] as String?;
    _standard = snapshotData['standard'] as String?;
    _category = snapshotData['category'] as String?;
    _dineTime = snapshotData['dine_time'] as DateTime?;
    _totalPresentDays = castToType<int>(snapshotData['total_present_days']);
    _totalAbsentDays = castToType<int>(snapshotData['total_absent_days']);
    _totalLateDays = castToType<int>(snapshotData['total_late_days']);
    _totalDineUnit = castToType<int>(snapshotData['total_dine_unit']);
    _totalPresentUnit = castToType<int>(snapshotData['total_present_unit']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studentAttendance')
          : FirebaseFirestore.instance.collectionGroup('studentAttendance');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('studentAttendance').doc();

  static Stream<StudentAttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentAttendanceRecord.fromSnapshot(s));

  static Future<StudentAttendanceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentAttendanceRecord.fromSnapshot(s));

  static StudentAttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentAttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentAttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentAttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentAttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentAttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentAttendanceRecordData({
  DateTime? createdTime,
  DateTime? presentTime,
  DateTime? absentTime,
  DateTime? lateTime,
  String? studentName,
  String? standard,
  String? category,
  DateTime? dineTime,
  int? totalPresentDays,
  int? totalAbsentDays,
  int? totalLateDays,
  int? totalDineUnit,
  int? totalPresentUnit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'present_time': presentTime,
      'absent_time': absentTime,
      'late_time': lateTime,
      'student_name': studentName,
      'standard': standard,
      'category': category,
      'dine_time': dineTime,
      'total_present_days': totalPresentDays,
      'total_absent_days': totalAbsentDays,
      'total_late_days': totalLateDays,
      'total_dine_unit': totalDineUnit,
      'total_present_unit': totalPresentUnit,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentAttendanceRecordDocumentEquality
    implements Equality<StudentAttendanceRecord> {
  const StudentAttendanceRecordDocumentEquality();

  @override
  bool equals(StudentAttendanceRecord? e1, StudentAttendanceRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.presentTime == e2?.presentTime &&
        e1?.absentTime == e2?.absentTime &&
        e1?.lateTime == e2?.lateTime &&
        e1?.studentName == e2?.studentName &&
        e1?.standard == e2?.standard &&
        e1?.category == e2?.category &&
        e1?.dineTime == e2?.dineTime &&
        e1?.totalPresentDays == e2?.totalPresentDays &&
        e1?.totalAbsentDays == e2?.totalAbsentDays &&
        e1?.totalLateDays == e2?.totalLateDays &&
        e1?.totalDineUnit == e2?.totalDineUnit &&
        e1?.totalPresentUnit == e2?.totalPresentUnit;
  }

  @override
  int hash(StudentAttendanceRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.presentTime,
        e?.absentTime,
        e?.lateTime,
        e?.studentName,
        e?.standard,
        e?.category,
        e?.dineTime,
        e?.totalPresentDays,
        e?.totalAbsentDays,
        e?.totalLateDays,
        e?.totalDineUnit,
        e?.totalPresentUnit
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentAttendanceRecord;
}
