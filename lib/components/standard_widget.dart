import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'standard_model.dart';
export 'standard_model.dart';

class StandardWidget extends StatefulWidget {
  const StandardWidget({Key? key}) : super(key: key);

  @override
  _StandardWidgetState createState() => _StandardWidgetState();
}

class _StandardWidgetState extends State<StandardWidget> {
  late StandardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StandardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(null),
      options: FFAppState().Classes,
      onChanged: (val) => setState(() => _model.dropDownValue = val),
      width: 300.0,
      height: 50.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      hintText: 'Please select classes..',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).alternate,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
