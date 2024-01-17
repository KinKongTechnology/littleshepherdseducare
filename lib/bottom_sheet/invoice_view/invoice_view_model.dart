import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_view_widget.dart' show InvoiceViewWidget;
import 'package:flutter/material.dart';

class InvoiceViewModel extends FlutterFlowModel<InvoiceViewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for month widget.
  FocusNode? monthFocusNode;
  TextEditingController? monthController;
  String? Function(BuildContext, String?)? monthControllerValidator;
  // State field(s) for monthly_fees widget.
  FocusNode? monthlyFeesFocusNode;
  TextEditingController? monthlyFeesController;
  String? Function(BuildContext, String?)? monthlyFeesControllerValidator;
  // State field(s) for DailyFees widget.
  FocusNode? dailyFeesFocusNode;
  TextEditingController? dailyFeesController;
  String? Function(BuildContext, String?)? dailyFeesControllerValidator;
  // State field(s) for TransportFees widget.
  FocusNode? transportFeesFocusNode;
  TextEditingController? transportFeesController;
  String? Function(BuildContext, String?)? transportFeesControllerValidator;
  // State field(s) for DineFees widget.
  FocusNode? dineFeesFocusNode;
  TextEditingController? dineFeesController;
  String? Function(BuildContext, String?)? dineFeesControllerValidator;
  // State field(s) for OneSubjectFees widget.
  FocusNode? oneSubjectFeesFocusNode;
  TextEditingController? oneSubjectFeesController;
  String? Function(BuildContext, String?)? oneSubjectFeesControllerValidator;
  // State field(s) for fullSubjectFees widget.
  FocusNode? fullSubjectFeesFocusNode;
  TextEditingController? fullSubjectFeesController;
  String? Function(BuildContext, String?)? fullSubjectFeesControllerValidator;
  // State field(s) for ExtensionFees widget.
  FocusNode? extensionFeesFocusNode;
  TextEditingController? extensionFeesController;
  String? Function(BuildContext, String?)? extensionFeesControllerValidator;
  // State field(s) for OnlineFees widget.
  FocusNode? onlineFeesFocusNode;
  TextEditingController? onlineFeesController;
  String? Function(BuildContext, String?)? onlineFeesControllerValidator;
  // State field(s) for PhysicalFees widget.
  FocusNode? physicalFeesFocusNode;
  TextEditingController? physicalFeesController;
  String? Function(BuildContext, String?)? physicalFeesControllerValidator;
  // State field(s) for RegistrationFees widget.
  FocusNode? registrationFeesFocusNode;
  TextEditingController? registrationFeesController;
  String? Function(BuildContext, String?)? registrationFeesControllerValidator;
  // State field(s) for BookFees widget.
  FocusNode? bookFeesFocusNode;
  TextEditingController? bookFeesController;
  String? Function(BuildContext, String?)? bookFeesControllerValidator;
  // State field(s) for ExtraClass widget.
  FocusNode? extraClassFocusNode;
  TextEditingController? extraClassController;
  String? Function(BuildContext, String?)? extraClassControllerValidator;
  // State field(s) for MiscFees widget.
  FocusNode? miscFeesFocusNode;
  TextEditingController? miscFeesController;
  String? Function(BuildContext, String?)? miscFeesControllerValidator;
  // State field(s) for ReferralDiscount widget.
  FocusNode? referralDiscountFocusNode;
  TextEditingController? referralDiscountController;
  String? Function(BuildContext, String?)? referralDiscountControllerValidator;
  // State field(s) for RebateRefund widget.
  FocusNode? rebateRefundFocusNode;
  TextEditingController? rebateRefundController;
  String? Function(BuildContext, String?)? rebateRefundControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    monthFocusNode?.dispose();
    monthController?.dispose();

    monthlyFeesFocusNode?.dispose();
    monthlyFeesController?.dispose();

    dailyFeesFocusNode?.dispose();
    dailyFeesController?.dispose();

    transportFeesFocusNode?.dispose();
    transportFeesController?.dispose();

    dineFeesFocusNode?.dispose();
    dineFeesController?.dispose();

    oneSubjectFeesFocusNode?.dispose();
    oneSubjectFeesController?.dispose();

    fullSubjectFeesFocusNode?.dispose();
    fullSubjectFeesController?.dispose();

    extensionFeesFocusNode?.dispose();
    extensionFeesController?.dispose();

    onlineFeesFocusNode?.dispose();
    onlineFeesController?.dispose();

    physicalFeesFocusNode?.dispose();
    physicalFeesController?.dispose();

    registrationFeesFocusNode?.dispose();
    registrationFeesController?.dispose();

    bookFeesFocusNode?.dispose();
    bookFeesController?.dispose();

    extraClassFocusNode?.dispose();
    extraClassController?.dispose();

    miscFeesFocusNode?.dispose();
    miscFeesController?.dispose();

    referralDiscountFocusNode?.dispose();
    referralDiscountController?.dispose();

    rebateRefundFocusNode?.dispose();
    rebateRefundController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
