import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_bar_model.dart';
export 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late BottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBarModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0x99FFFFFF),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/Category_2_1.svg',
                    width: 32.0,
                    height: 32.0,
                    fit: BoxFit.none,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 33.0, 0.0, 0.0),
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF9D99F8),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/Creativity-01.png',
                width: 32.0,
                height: 32.0,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/School_Test-01.png',
                width: 32.0,
                height: 32.0,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/Graduates-01.png',
                width: 32.0,
                height: 32.0,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
