import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'registration_widget.dart' show RegistrationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationModel extends FlutterFlowModel<RegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for StudentName widget.
  TextEditingController? studentNameController;
  String? Function(BuildContext, String?)? studentNameControllerValidator;
  // State field(s) for StudentName_mandarin widget.
  TextEditingController? studentNameMandarinController;
  String? Function(BuildContext, String?)?
      studentNameMandarinControllerValidator;
  // State field(s) for Age widget.
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  DateTime? datePicked;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for race widget.
  String? raceValue;
  FormFieldController<String>? raceValueController;
  // State field(s) for Religion widget.
  TextEditingController? religionController;
  String? Function(BuildContext, String?)? religionControllerValidator;
  // State field(s) for MumName widget.
  TextEditingController? mumNameController;
  String? Function(BuildContext, String?)? mumNameControllerValidator;
  // State field(s) for MumContact widget.
  TextEditingController? mumContactController;
  String? Function(BuildContext, String?)? mumContactControllerValidator;
  // State field(s) for MumOccupation widget.
  TextEditingController? mumOccupationController;
  String? Function(BuildContext, String?)? mumOccupationControllerValidator;
  // State field(s) for DadName widget.
  TextEditingController? dadNameController;
  String? Function(BuildContext, String?)? dadNameControllerValidator;
  // State field(s) for Dadcontact widget.
  TextEditingController? dadcontactController;
  String? Function(BuildContext, String?)? dadcontactControllerValidator;
  // State field(s) for dadOccupation widget.
  TextEditingController? dadOccupationController;
  String? Function(BuildContext, String?)? dadOccupationControllerValidator;
  // State field(s) for SchoolName widget.
  TextEditingController? schoolNameController;
  String? Function(BuildContext, String?)? schoolNameControllerValidator;
  // State field(s) for HomeAddress widget.
  TextEditingController? homeAddressController;
  String? Function(BuildContext, String?)? homeAddressControllerValidator;
  // State field(s) for Standard widget.
  String? standardValue;
  FormFieldController<String>? standardValueController;
  // State field(s) for typeClass widget.
  String? typeClassValue;
  FormFieldController<String>? typeClassValueController;
  // State field(s) for Foodallergy widget.
  String? foodallergyValue;
  FormFieldController<String>? foodallergyValueController;
  // State field(s) for Listfoodallergy widget.
  TextEditingController? listfoodallergyController;
  String? Function(BuildContext, String?)? listfoodallergyControllerValidator;
  // State field(s) for phobia widget.
  TextEditingController? phobiaController;
  String? Function(BuildContext, String?)? phobiaControllerValidator;
  // State field(s) for extracare widget.
  TextEditingController? extracareController;
  String? Function(BuildContext, String?)? extracareControllerValidator;
  // State field(s) for additionalInfo widget.
  TextEditingController? additionalInfoController;
  String? Function(BuildContext, String?)? additionalInfoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    studentNameController?.dispose();
    studentNameMandarinController?.dispose();
    ageController?.dispose();
    religionController?.dispose();
    mumNameController?.dispose();
    mumContactController?.dispose();
    mumOccupationController?.dispose();
    dadNameController?.dispose();
    dadcontactController?.dispose();
    dadOccupationController?.dispose();
    schoolNameController?.dispose();
    homeAddressController?.dispose();
    listfoodallergyController?.dispose();
    phobiaController?.dispose();
    extracareController?.dispose();
    additionalInfoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
