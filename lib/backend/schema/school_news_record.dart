import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SchoolNewsRecord extends FirestoreRecord {
  SchoolNewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "news_image" field.
  String? _newsImage;
  String get newsImage => _newsImage ?? '';
  bool hasNewsImage() => _newsImage != null;

  // "news_link" field.
  String? _newsLink;
  String get newsLink => _newsLink ?? '';
  bool hasNewsLink() => _newsLink != null;

  // "news_message" field.
  String? _newsMessage;
  String get newsMessage => _newsMessage ?? '';
  bool hasNewsMessage() => _newsMessage != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _newsImage = snapshotData['news_image'] as String?;
    _newsLink = snapshotData['news_link'] as String?;
    _newsMessage = snapshotData['news_message'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('school_news');

  static Stream<SchoolNewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchoolNewsRecord.fromSnapshot(s));

  static Future<SchoolNewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchoolNewsRecord.fromSnapshot(s));

  static SchoolNewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchoolNewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchoolNewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchoolNewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchoolNewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchoolNewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchoolNewsRecordData({
  String? title,
  String? newsImage,
  String? newsLink,
  String? newsMessage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'news_image': newsImage,
      'news_link': newsLink,
      'news_message': newsMessage,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchoolNewsRecordDocumentEquality implements Equality<SchoolNewsRecord> {
  const SchoolNewsRecordDocumentEquality();

  @override
  bool equals(SchoolNewsRecord? e1, SchoolNewsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.newsImage == e2?.newsImage &&
        e1?.newsLink == e2?.newsLink &&
        e1?.newsMessage == e2?.newsMessage;
  }

  @override
  int hash(SchoolNewsRecord? e) => const ListEquality()
      .hash([e?.title, e?.newsImage, e?.newsLink, e?.newsMessage]);

  @override
  bool isValidKey(Object? o) => o is SchoolNewsRecord;
}
