import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassTypeRecord extends FirestoreRecord {
  ClassTypeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "class_type" field.
  List<String>? _classType;
  List<String> get classType => _classType ?? const [];
  bool hasClassType() => _classType != null;

  // "standard" field.
  List<String>? _standard;
  List<String> get standard => _standard ?? const [];
  bool hasStandard() => _standard != null;

  void _initializeFields() {
    _classType = getDataList(snapshotData['class_type']);
    _standard = getDataList(snapshotData['standard']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_type');

  static Stream<ClassTypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassTypeRecord.fromSnapshot(s));

  static Future<ClassTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassTypeRecord.fromSnapshot(s));

  static ClassTypeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassTypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassTypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassTypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassTypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassTypeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassTypeRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ClassTypeRecordDocumentEquality implements Equality<ClassTypeRecord> {
  const ClassTypeRecordDocumentEquality();

  @override
  bool equals(ClassTypeRecord? e1, ClassTypeRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.classType, e2?.classType) &&
        listEquality.equals(e1?.standard, e2?.standard);
  }

  @override
  int hash(ClassTypeRecord? e) =>
      const ListEquality().hash([e?.classType, e?.standard]);

  @override
  bool isValidKey(Object? o) => o is ClassTypeRecord;
}
