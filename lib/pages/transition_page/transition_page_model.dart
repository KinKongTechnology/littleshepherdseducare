import '/flutter_flow/flutter_flow_util.dart';
import 'transition_page_widget.dart' show TransitionPageWidget;
import 'package:flutter/material.dart';

class TransitionPageModel extends FlutterFlowModel<TransitionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
