// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentDetailStruct extends FFFirebaseStruct {
  StudentDetailStruct({
    String? studentName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _studentName = studentName,
        super(firestoreUtilData);

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  set studentName(String? val) => _studentName = val;
  bool hasStudentName() => _studentName != null;

  static StudentDetailStruct fromMap(Map<String, dynamic> data) =>
      StudentDetailStruct(
        studentName: data['student_name'] as String?,
      );

  static StudentDetailStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? StudentDetailStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'student_name': _studentName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'student_name': serializeParam(
          _studentName,
          ParamType.String,
        ),
      }.withoutNulls;

  static StudentDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      StudentDetailStruct(
        studentName: deserializeParam(
          data['student_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StudentDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudentDetailStruct && studentName == other.studentName;
  }

  @override
  int get hashCode => const ListEquality().hash([studentName]);
}

StudentDetailStruct createStudentDetailStruct({
  String? studentName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StudentDetailStruct(
      studentName: studentName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StudentDetailStruct? updateStudentDetailStruct(
  StudentDetailStruct? studentDetail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    studentDetail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStudentDetailStructData(
  Map<String, dynamic> firestoreData,
  StudentDetailStruct? studentDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (studentDetail == null) {
    return;
  }
  if (studentDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && studentDetail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final studentDetailData =
      getStudentDetailFirestoreData(studentDetail, forFieldValue);
  final nestedData =
      studentDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = studentDetail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStudentDetailFirestoreData(
  StudentDetailStruct? studentDetail, [
  bool forFieldValue = false,
]) {
  if (studentDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(studentDetail.toMap());

  // Add any Firestore field values
  studentDetail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStudentDetailListFirestoreData(
  List<StudentDetailStruct>? studentDetails,
) =>
    studentDetails
        ?.map((e) => getStudentDetailFirestoreData(e, true))
        .toList() ??
    [];
