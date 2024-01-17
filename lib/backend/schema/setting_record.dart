import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class SettingRecord extends FirestoreRecord {
  SettingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "standard" field.
  List<String>? _standard;
  List<String> get standard => _standard ?? const [];
  bool hasStandard() => _standard != null;

  // "allergy_food" field.
  List<String>? _allergyFood;
  List<String> get allergyFood => _allergyFood ?? const [];
  bool hasAllergyFood() => _allergyFood != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "additional1" field.
  List<String>? _additional1;
  List<String> get additional1 => _additional1 ?? const [];
  bool hasAdditional1() => _additional1 != null;

  // "additional2" field.
  List<String>? _additional2;
  List<String> get additional2 => _additional2 ?? const [];
  bool hasAdditional2() => _additional2 != null;

  // "race" field.
  List<String>? _race;
  List<String> get race => _race ?? const [];
  bool hasRace() => _race != null;

  // "gender" field.
  List<String>? _gender;
  List<String> get gender => _gender ?? const [];
  bool hasGender() => _gender != null;

  // "charge_unit" field.
  List<String>? _chargeUnit;
  List<String> get chargeUnit => _chargeUnit ?? const [];
  bool hasChargeUnit() => _chargeUnit != null;

  // "month" field.
  List<String>? _month;
  List<String> get month => _month ?? const [];
  bool hasMonth() => _month != null;

  // "payment_mode" field.
  List<String>? _paymentMode;
  List<String> get paymentMode => _paymentMode ?? const [];
  bool hasPaymentMode() => _paymentMode != null;

  void _initializeFields() {
    _standard = getDataList(snapshotData['standard']);
    _allergyFood = getDataList(snapshotData['allergy_food']);
    _category = getDataList(snapshotData['category']);
    _additional1 = getDataList(snapshotData['additional1']);
    _additional2 = getDataList(snapshotData['additional2']);
    _race = getDataList(snapshotData['race']);
    _gender = getDataList(snapshotData['gender']);
    _chargeUnit = getDataList(snapshotData['charge_unit']);
    _month = getDataList(snapshotData['month']);
    _paymentMode = getDataList(snapshotData['payment_mode']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('setting');

  static Stream<SettingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingRecord.fromSnapshot(s));

  static Future<SettingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingRecord.fromSnapshot(s));

  static SettingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class SettingRecordDocumentEquality implements Equality<SettingRecord> {
  const SettingRecordDocumentEquality();

  @override
  bool equals(SettingRecord? e1, SettingRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.standard, e2?.standard) &&
        listEquality.equals(e1?.allergyFood, e2?.allergyFood) &&
        listEquality.equals(e1?.category, e2?.category) &&
        listEquality.equals(e1?.additional1, e2?.additional1) &&
        listEquality.equals(e1?.additional2, e2?.additional2) &&
        listEquality.equals(e1?.race, e2?.race) &&
        listEquality.equals(e1?.gender, e2?.gender) &&
        listEquality.equals(e1?.chargeUnit, e2?.chargeUnit) &&
        listEquality.equals(e1?.month, e2?.month) &&
        listEquality.equals(e1?.paymentMode, e2?.paymentMode);
  }

  @override
  int hash(SettingRecord? e) => const ListEquality().hash([
        e?.standard,
        e?.allergyFood,
        e?.category,
        e?.additional1,
        e?.additional2,
        e?.race,
        e?.gender,
        e?.chargeUnit,
        e?.month,
        e?.paymentMode
      ]);

  @override
  bool isValidKey(Object? o) => o is SettingRecord;
}
