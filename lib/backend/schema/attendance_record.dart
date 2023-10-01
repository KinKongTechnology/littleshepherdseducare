import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendanceRecord extends FirestoreRecord {
  AttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "attendance_time" field.
  DateTime? _attendanceTime;
  DateTime? get attendanceTime => _attendanceTime;
  bool hasAttendanceTime() => _attendanceTime != null;

  // "absent_time" field.
  DateTime? _absentTime;
  DateTime? get absentTime => _absentTime;
  bool hasAbsentTime() => _absentTime != null;

  // "classes" field.
  DocumentReference? _classes;
  DocumentReference? get classes => _classes;
  bool hasClasses() => _classes != null;

  // "student_name" field.
  DocumentReference? _studentName;
  DocumentReference? get studentName => _studentName;
  bool hasStudentName() => _studentName != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "rate" field.
  DocumentReference? _rate;
  DocumentReference? get rate => _rate;
  bool hasRate() => _rate != null;

  void _initializeFields() {
    _attendanceTime = snapshotData['attendance_time'] as DateTime?;
    _absentTime = snapshotData['absent_time'] as DateTime?;
    _classes = snapshotData['classes'] as DocumentReference?;
    _studentName = snapshotData['student_name'] as DocumentReference?;
    _category = snapshotData['category'] as DocumentReference?;
    _rate = snapshotData['rate'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attendance');

  static Stream<AttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendanceRecord.fromSnapshot(s));

  static Future<AttendanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendanceRecord.fromSnapshot(s));

  static AttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendanceRecordData({
  DateTime? attendanceTime,
  DateTime? absentTime,
  DocumentReference? classes,
  DocumentReference? studentName,
  DocumentReference? category,
  DocumentReference? rate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'attendance_time': attendanceTime,
      'absent_time': absentTime,
      'classes': classes,
      'student_name': studentName,
      'category': category,
      'rate': rate,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendanceRecordDocumentEquality implements Equality<AttendanceRecord> {
  const AttendanceRecordDocumentEquality();

  @override
  bool equals(AttendanceRecord? e1, AttendanceRecord? e2) {
    return e1?.attendanceTime == e2?.attendanceTime &&
        e1?.absentTime == e2?.absentTime &&
        e1?.classes == e2?.classes &&
        e1?.studentName == e2?.studentName &&
        e1?.category == e2?.category &&
        e1?.rate == e2?.rate;
  }

  @override
  int hash(AttendanceRecord? e) => const ListEquality().hash([
        e?.attendanceTime,
        e?.absentTime,
        e?.classes,
        e?.studentName,
        e?.category,
        e?.rate
      ]);

  @override
  bool isValidKey(Object? o) => o is AttendanceRecord;
}
