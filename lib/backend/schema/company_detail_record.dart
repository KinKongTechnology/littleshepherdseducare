import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyDetailRecord extends FirestoreRecord {
  CompanyDetailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "ContactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _address = snapshotData['Address'] as String?;
    _contactNumber = snapshotData['ContactNumber'] as String?;
    _logo = snapshotData['Logo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CompanyDetail');

  static Stream<CompanyDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyDetailRecord.fromSnapshot(s));

  static Future<CompanyDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyDetailRecord.fromSnapshot(s));

  static CompanyDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyDetailRecordData({
  String? name,
  String? address,
  String? contactNumber,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Address': address,
      'ContactNumber': contactNumber,
      'Logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyDetailRecordDocumentEquality
    implements Equality<CompanyDetailRecord> {
  const CompanyDetailRecordDocumentEquality();

  @override
  bool equals(CompanyDetailRecord? e1, CompanyDetailRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.address == e2?.address &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.logo == e2?.logo;
  }

  @override
  int hash(CompanyDetailRecord? e) => const ListEquality()
      .hash([e?.name, e?.address, e?.contactNumber, e?.logo]);

  @override
  bool isValidKey(Object? o) => o is CompanyDetailRecord;
}
