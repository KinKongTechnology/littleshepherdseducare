import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registration_widget.dart' show RegistrationWidget;
import 'package:flutter/material.dart';

class RegistrationModel extends FlutterFlowModel<RegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for StudentName widget.
  FocusNode? studentNameFocusNode;
  TextEditingController? studentNameController;
  String? Function(BuildContext, String?)? studentNameControllerValidator;
  // State field(s) for StudentName_mandarin widget.
  FocusNode? studentNameMandarinFocusNode;
  TextEditingController? studentNameMandarinController;
  String? Function(BuildContext, String?)?
      studentNameMandarinControllerValidator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
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
  FocusNode? religionFocusNode;
  TextEditingController? religionController;
  String? Function(BuildContext, String?)? religionControllerValidator;
  // State field(s) for MumName widget.
  FocusNode? mumNameFocusNode;
  TextEditingController? mumNameController;
  String? Function(BuildContext, String?)? mumNameControllerValidator;
  // State field(s) for MumContact widget.
  FocusNode? mumContactFocusNode;
  TextEditingController? mumContactController;
  String? Function(BuildContext, String?)? mumContactControllerValidator;
  // State field(s) for MumOccupation widget.
  FocusNode? mumOccupationFocusNode;
  TextEditingController? mumOccupationController;
  String? Function(BuildContext, String?)? mumOccupationControllerValidator;
  // State field(s) for DadName widget.
  FocusNode? dadNameFocusNode;
  TextEditingController? dadNameController;
  String? Function(BuildContext, String?)? dadNameControllerValidator;
  // State field(s) for Dadcontact widget.
  FocusNode? dadcontactFocusNode;
  TextEditingController? dadcontactController;
  String? Function(BuildContext, String?)? dadcontactControllerValidator;
  // State field(s) for dadOccupation widget.
  FocusNode? dadOccupationFocusNode;
  TextEditingController? dadOccupationController;
  String? Function(BuildContext, String?)? dadOccupationControllerValidator;
  // State field(s) for SchoolName widget.
  FocusNode? schoolNameFocusNode;
  TextEditingController? schoolNameController;
  String? Function(BuildContext, String?)? schoolNameControllerValidator;
  // State field(s) for standard widget.
  String? standardValue;
  FormFieldController<String>? standardValueController;
  // State field(s) for HomeAddress widget.
  FocusNode? homeAddressFocusNode;
  TextEditingController? homeAddressController;
  String? Function(BuildContext, String?)? homeAddressControllerValidator;
  // State field(s) for Foodallergy widget.
  String? foodallergyValue;
  FormFieldController<String>? foodallergyValueController;
  // State field(s) for Listfoodallergy widget.
  FocusNode? listfoodallergyFocusNode;
  TextEditingController? listfoodallergyController;
  String? Function(BuildContext, String?)? listfoodallergyControllerValidator;
  // State field(s) for phobia widget.
  FocusNode? phobiaFocusNode;
  TextEditingController? phobiaController;
  String? Function(BuildContext, String?)? phobiaControllerValidator;
  // State field(s) for extracare widget.
  FocusNode? extracareFocusNode;
  TextEditingController? extracareController;
  String? Function(BuildContext, String?)? extracareControllerValidator;
  // State field(s) for additionalInfo widget.
  FocusNode? additionalInfoFocusNode;
  TextEditingController? additionalInfoController;
  String? Function(BuildContext, String?)? additionalInfoControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    studentNameFocusNode?.dispose();
    studentNameController?.dispose();

    studentNameMandarinFocusNode?.dispose();
    studentNameMandarinController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();

    religionFocusNode?.dispose();
    religionController?.dispose();

    mumNameFocusNode?.dispose();
    mumNameController?.dispose();

    mumContactFocusNode?.dispose();
    mumContactController?.dispose();

    mumOccupationFocusNode?.dispose();
    mumOccupationController?.dispose();

    dadNameFocusNode?.dispose();
    dadNameController?.dispose();

    dadcontactFocusNode?.dispose();
    dadcontactController?.dispose();

    dadOccupationFocusNode?.dispose();
    dadOccupationController?.dispose();

    schoolNameFocusNode?.dispose();
    schoolNameController?.dispose();

    homeAddressFocusNode?.dispose();
    homeAddressController?.dispose();

    listfoodallergyFocusNode?.dispose();
    listfoodallergyController?.dispose();

    phobiaFocusNode?.dispose();
    phobiaController?.dispose();

    extracareFocusNode?.dispose();
    extracareController?.dispose();

    additionalInfoFocusNode?.dispose();
    additionalInfoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
