import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/category_widget.dart';
import '/components/standard_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_setting_widget.dart' show ProfileSettingWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileSettingModel extends FlutterFlowModel<ProfileSettingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for StudentName widget.
  TextEditingController? studentNameController;
  String? Function(BuildContext, String?)? studentNameControllerValidator;
  // State field(s) for ParentName widget.
  TextEditingController? parentNameController;
  String? Function(BuildContext, String?)? parentNameControllerValidator;
  // State field(s) for ContactNum widget.
  TextEditingController? contactNumController;
  String? Function(BuildContext, String?)? contactNumControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // Model for Standard component.
  late StandardModel standardModel;
  // Model for Category component.
  late CategoryModel categoryModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    standardModel = createModel(context, () => StandardModel());
    categoryModel = createModel(context, () => CategoryModel());
  }

  void dispose() {
    unfocusNode.dispose();
    studentNameController?.dispose();
    parentNameController?.dispose();
    contactNumController?.dispose();
    addressController?.dispose();
    standardModel.dispose();
    categoryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
