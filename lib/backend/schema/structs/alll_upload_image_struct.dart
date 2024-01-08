// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlllUploadImageStruct extends FFFirebaseStruct {
  AlllUploadImageStruct({
    String? studentImage,
    String? commentImage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _studentImage = studentImage,
        _commentImage = commentImage,
        super(firestoreUtilData);

  // "student_image" field.
  String? _studentImage;
  String get studentImage => _studentImage ?? '';
  set studentImage(String? val) => _studentImage = val;
  bool hasStudentImage() => _studentImage != null;

  // "comment_image" field.
  String? _commentImage;
  String get commentImage => _commentImage ?? '';
  set commentImage(String? val) => _commentImage = val;
  bool hasCommentImage() => _commentImage != null;

  static AlllUploadImageStruct fromMap(Map<String, dynamic> data) =>
      AlllUploadImageStruct(
        studentImage: data['student_image'] as String?,
        commentImage: data['comment_image'] as String?,
      );

  static AlllUploadImageStruct? maybeFromMap(dynamic data) => data is Map
      ? AlllUploadImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'student_image': _studentImage,
        'comment_image': _commentImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'student_image': serializeParam(
          _studentImage,
          ParamType.String,
        ),
        'comment_image': serializeParam(
          _commentImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static AlllUploadImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlllUploadImageStruct(
        studentImage: deserializeParam(
          data['student_image'],
          ParamType.String,
          false,
        ),
        commentImage: deserializeParam(
          data['comment_image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AlllUploadImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlllUploadImageStruct &&
        studentImage == other.studentImage &&
        commentImage == other.commentImage;
  }

  @override
  int get hashCode => const ListEquality().hash([studentImage, commentImage]);
}

AlllUploadImageStruct createAlllUploadImageStruct({
  String? studentImage,
  String? commentImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AlllUploadImageStruct(
      studentImage: studentImage,
      commentImage: commentImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AlllUploadImageStruct? updateAlllUploadImageStruct(
  AlllUploadImageStruct? alllUploadImage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    alllUploadImage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAlllUploadImageStructData(
  Map<String, dynamic> firestoreData,
  AlllUploadImageStruct? alllUploadImage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (alllUploadImage == null) {
    return;
  }
  if (alllUploadImage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && alllUploadImage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final alllUploadImageData =
      getAlllUploadImageFirestoreData(alllUploadImage, forFieldValue);
  final nestedData =
      alllUploadImageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = alllUploadImage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAlllUploadImageFirestoreData(
  AlllUploadImageStruct? alllUploadImage, [
  bool forFieldValue = false,
]) {
  if (alllUploadImage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(alllUploadImage.toMap());

  // Add any Firestore field values
  alllUploadImage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAlllUploadImageListFirestoreData(
  List<AlllUploadImageStruct>? alllUploadImages,
) =>
    alllUploadImages
        ?.map((e) => getAlllUploadImageFirestoreData(e, true))
        .toList() ??
    [];
