import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class StudentPerformanceRecord extends FirestoreRecord {
  StudentPerformanceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "teacher_comment" field.
  String? _teacherComment;
  String get teacherComment => _teacherComment ?? '';
  bool hasTeacherComment() => _teacherComment != null;

  // "parent_comment" field.
  String? _parentComment;
  String get parentComment => _parentComment ?? '';
  bool hasParentComment() => _parentComment != null;

  // "material_upload" field.
  String? _materialUpload;
  String get materialUpload => _materialUpload ?? '';
  bool hasMaterialUpload() => _materialUpload != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _studentName = snapshotData['student_name'] as String?;
    _teacherComment = snapshotData['teacher_comment'] as String?;
    _parentComment = snapshotData['parent_comment'] as String?;
    _materialUpload = snapshotData['material_upload'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studentPerformance')
          : FirebaseFirestore.instance.collectionGroup('studentPerformance');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('studentPerformance').doc(id);

  static Stream<StudentPerformanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentPerformanceRecord.fromSnapshot(s));

  static Future<StudentPerformanceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentPerformanceRecord.fromSnapshot(s));

  static StudentPerformanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentPerformanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentPerformanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentPerformanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentPerformanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentPerformanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentPerformanceRecordData({
  String? studentName,
  String? teacherComment,
  String? parentComment,
  String? materialUpload,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student_name': studentName,
      'teacher_comment': teacherComment,
      'parent_comment': parentComment,
      'material_upload': materialUpload,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentPerformanceRecordDocumentEquality
    implements Equality<StudentPerformanceRecord> {
  const StudentPerformanceRecordDocumentEquality();

  @override
  bool equals(StudentPerformanceRecord? e1, StudentPerformanceRecord? e2) {
    return e1?.studentName == e2?.studentName &&
        e1?.teacherComment == e2?.teacherComment &&
        e1?.parentComment == e2?.parentComment &&
        e1?.materialUpload == e2?.materialUpload &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(StudentPerformanceRecord? e) => const ListEquality().hash([
        e?.studentName,
        e?.teacherComment,
        e?.parentComment,
        e?.materialUpload,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentPerformanceRecord;
}
