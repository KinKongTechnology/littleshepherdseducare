import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParentCommentRecord extends FirestoreRecord {
  ParentCommentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "parent_name" field.
  String? _parentName;
  String get parentName => _parentName ?? '';
  bool hasParentName() => _parentName != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "image_upload" field.
  String? _imageUpload;
  String get imageUpload => _imageUpload ?? '';
  bool hasImageUpload() => _imageUpload != null;

  void _initializeFields() {
    _parentName = snapshotData['parent_name'] as String?;
    _studentName = snapshotData['student_name'] as String?;
    _comment = snapshotData['comment'] as String?;
    _imageUpload = snapshotData['image_upload'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parent_comment');

  static Stream<ParentCommentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParentCommentRecord.fromSnapshot(s));

  static Future<ParentCommentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParentCommentRecord.fromSnapshot(s));

  static ParentCommentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParentCommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParentCommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParentCommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParentCommentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParentCommentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParentCommentRecordData({
  String? parentName,
  String? studentName,
  String? comment,
  String? imageUpload,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'parent_name': parentName,
      'student_name': studentName,
      'comment': comment,
      'image_upload': imageUpload,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParentCommentRecordDocumentEquality
    implements Equality<ParentCommentRecord> {
  const ParentCommentRecordDocumentEquality();

  @override
  bool equals(ParentCommentRecord? e1, ParentCommentRecord? e2) {
    return e1?.parentName == e2?.parentName &&
        e1?.studentName == e2?.studentName &&
        e1?.comment == e2?.comment &&
        e1?.imageUpload == e2?.imageUpload;
  }

  @override
  int hash(ParentCommentRecord? e) => const ListEquality()
      .hash([e?.parentName, e?.studentName, e?.comment, e?.imageUpload]);

  @override
  bool isValidKey(Object? o) => o is ParentCommentRecord;
}
