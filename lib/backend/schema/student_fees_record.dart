import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentFeesRecord extends FirestoreRecord {
  StudentFeesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

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

  // "rate" field.
  int? _rate;
  int get rate => _rate ?? 0;
  bool hasRate() => _rate != null;

  // "unit" field.
  int? _unit;
  int get unit => _unit ?? 0;
  bool hasUnit() => _unit != null;

  // "dine_fees" field.
  int? _dineFees;
  int get dineFees => _dineFees ?? 0;
  bool hasDineFees() => _dineFees != null;

  // "transport_fees" field.
  int? _transportFees;
  int get transportFees => _transportFees ?? 0;
  bool hasTransportFees() => _transportFees != null;

  // "misc_fees" field.
  int? _miscFees;
  int get miscFees => _miscFees ?? 0;
  bool hasMiscFees() => _miscFees != null;

  // "teachers_name" field.
  String? _teachersName;
  String get teachersName => _teachersName ?? '';
  bool hasTeachersName() => _teachersName != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "total_fees" field.
  int? _totalFees;
  int get totalFees => _totalFees ?? 0;
  bool hasTotalFees() => _totalFees != null;

  // "registration_fees" field.
  int? _registrationFees;
  int get registrationFees => _registrationFees ?? 0;
  bool hasRegistrationFees() => _registrationFees != null;

  // "extension_program" field.
  int? _extensionProgram;
  int get extensionProgram => _extensionProgram ?? 0;
  bool hasExtensionProgram() => _extensionProgram != null;

  // "book_fees" field.
  int? _bookFees;
  int get bookFees => _bookFees ?? 0;
  bool hasBookFees() => _bookFees != null;

  // "extra_classes" field.
  int? _extraClasses;
  int get extraClasses => _extraClasses ?? 0;
  bool hasExtraClasses() => _extraClasses != null;

  // "referral" field.
  int? _referral;
  int get referral => _referral ?? 0;
  bool hasReferral() => _referral != null;

  // "month" field.
  DateTime? _month;
  DateTime? get month => _month;
  bool hasMonth() => _month != null;

  // "rebate" field.
  int? _rebate;
  int get rebate => _rebate ?? 0;
  bool hasRebate() => _rebate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "dineFees_unit" field.
  int? _dineFeesUnit;
  int get dineFeesUnit => _dineFeesUnit ?? 0;
  bool hasDineFeesUnit() => _dineFeesUnit != null;

  // "monthly_fees" field.
  int? _monthlyFees;
  int get monthlyFees => _monthlyFees ?? 0;
  bool hasMonthlyFees() => _monthlyFees != null;

  // "subject_fees" field.
  int? _subjectFees;
  int get subjectFees => _subjectFees ?? 0;
  bool hasSubjectFees() => _subjectFees != null;

  // "fullSubject_fees" field.
  int? _fullSubjectFees;
  int get fullSubjectFees => _fullSubjectFees ?? 0;
  bool hasFullSubjectFees() => _fullSubjectFees != null;

  // "online_fees" field.
  int? _onlineFees;
  int get onlineFees => _onlineFees ?? 0;
  bool hasOnlineFees() => _onlineFees != null;

  // "offline_fees" field.
  int? _offlineFees;
  int get offlineFees => _offlineFees ?? 0;
  bool hasOfflineFees() => _offlineFees != null;

  // "total_day_fees" field.
  int? _totalDayFees;
  int get totalDayFees => _totalDayFees ?? 0;
  bool hasTotalDayFees() => _totalDayFees != null;

  // "payment_slip" field.
  String? _paymentSlip;
  String get paymentSlip => _paymentSlip ?? '';
  bool hasPaymentSlip() => _paymentSlip != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _studentName = snapshotData['student_name'] as String?;
    _standard = snapshotData['standard'] as String?;
    _category = snapshotData['category'] as String?;
    _rate = castToType<int>(snapshotData['rate']);
    _unit = castToType<int>(snapshotData['unit']);
    _dineFees = castToType<int>(snapshotData['dine_fees']);
    _transportFees = castToType<int>(snapshotData['transport_fees']);
    _miscFees = castToType<int>(snapshotData['misc_fees']);
    _teachersName = snapshotData['teachers_name'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _totalFees = castToType<int>(snapshotData['total_fees']);
    _registrationFees = castToType<int>(snapshotData['registration_fees']);
    _extensionProgram = castToType<int>(snapshotData['extension_program']);
    _bookFees = castToType<int>(snapshotData['book_fees']);
    _extraClasses = castToType<int>(snapshotData['extra_classes']);
    _referral = castToType<int>(snapshotData['referral']);
    _month = snapshotData['month'] as DateTime?;
    _rebate = castToType<int>(snapshotData['rebate']);
    _uid = snapshotData['uid'] as String?;
    _dineFeesUnit = castToType<int>(snapshotData['dineFees_unit']);
    _monthlyFees = castToType<int>(snapshotData['monthly_fees']);
    _subjectFees = castToType<int>(snapshotData['subject_fees']);
    _fullSubjectFees = castToType<int>(snapshotData['fullSubject_fees']);
    _onlineFees = castToType<int>(snapshotData['online_fees']);
    _offlineFees = castToType<int>(snapshotData['offline_fees']);
    _totalDayFees = castToType<int>(snapshotData['total_day_fees']);
    _paymentSlip = snapshotData['payment_slip'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studentFees')
          : FirebaseFirestore.instance.collectionGroup('studentFees');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('studentFees').doc();

  static Stream<StudentFeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentFeesRecord.fromSnapshot(s));

  static Future<StudentFeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentFeesRecord.fromSnapshot(s));

  static StudentFeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentFeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentFeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentFeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentFeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentFeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentFeesRecordData({
  DateTime? createdTime,
  String? studentName,
  String? standard,
  String? category,
  int? rate,
  int? unit,
  int? dineFees,
  int? transportFees,
  int? miscFees,
  String? teachersName,
  String? remarks,
  int? totalFees,
  int? registrationFees,
  int? extensionProgram,
  int? bookFees,
  int? extraClasses,
  int? referral,
  DateTime? month,
  int? rebate,
  String? uid,
  int? dineFeesUnit,
  int? monthlyFees,
  int? subjectFees,
  int? fullSubjectFees,
  int? onlineFees,
  int? offlineFees,
  int? totalDayFees,
  String? paymentSlip,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'student_name': studentName,
      'standard': standard,
      'category': category,
      'rate': rate,
      'unit': unit,
      'dine_fees': dineFees,
      'transport_fees': transportFees,
      'misc_fees': miscFees,
      'teachers_name': teachersName,
      'remarks': remarks,
      'total_fees': totalFees,
      'registration_fees': registrationFees,
      'extension_program': extensionProgram,
      'book_fees': bookFees,
      'extra_classes': extraClasses,
      'referral': referral,
      'month': month,
      'rebate': rebate,
      'uid': uid,
      'dineFees_unit': dineFeesUnit,
      'monthly_fees': monthlyFees,
      'subject_fees': subjectFees,
      'fullSubject_fees': fullSubjectFees,
      'online_fees': onlineFees,
      'offline_fees': offlineFees,
      'total_day_fees': totalDayFees,
      'payment_slip': paymentSlip,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentFeesRecordDocumentEquality implements Equality<StudentFeesRecord> {
  const StudentFeesRecordDocumentEquality();

  @override
  bool equals(StudentFeesRecord? e1, StudentFeesRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.studentName == e2?.studentName &&
        e1?.standard == e2?.standard &&
        e1?.category == e2?.category &&
        e1?.rate == e2?.rate &&
        e1?.unit == e2?.unit &&
        e1?.dineFees == e2?.dineFees &&
        e1?.transportFees == e2?.transportFees &&
        e1?.miscFees == e2?.miscFees &&
        e1?.teachersName == e2?.teachersName &&
        e1?.remarks == e2?.remarks &&
        e1?.totalFees == e2?.totalFees &&
        e1?.registrationFees == e2?.registrationFees &&
        e1?.extensionProgram == e2?.extensionProgram &&
        e1?.bookFees == e2?.bookFees &&
        e1?.extraClasses == e2?.extraClasses &&
        e1?.referral == e2?.referral &&
        e1?.month == e2?.month &&
        e1?.rebate == e2?.rebate &&
        e1?.uid == e2?.uid &&
        e1?.dineFeesUnit == e2?.dineFeesUnit &&
        e1?.monthlyFees == e2?.monthlyFees &&
        e1?.subjectFees == e2?.subjectFees &&
        e1?.fullSubjectFees == e2?.fullSubjectFees &&
        e1?.onlineFees == e2?.onlineFees &&
        e1?.offlineFees == e2?.offlineFees &&
        e1?.totalDayFees == e2?.totalDayFees &&
        e1?.paymentSlip == e2?.paymentSlip;
  }

  @override
  int hash(StudentFeesRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.studentName,
        e?.standard,
        e?.category,
        e?.rate,
        e?.unit,
        e?.dineFees,
        e?.transportFees,
        e?.miscFees,
        e?.teachersName,
        e?.remarks,
        e?.totalFees,
        e?.registrationFees,
        e?.extensionProgram,
        e?.bookFees,
        e?.extraClasses,
        e?.referral,
        e?.month,
        e?.rebate,
        e?.uid,
        e?.dineFeesUnit,
        e?.monthlyFees,
        e?.subjectFees,
        e?.fullSubjectFees,
        e?.onlineFees,
        e?.offlineFees,
        e?.totalDayFees,
        e?.paymentSlip
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentFeesRecord;
}
