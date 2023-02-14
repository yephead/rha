import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_availability_model.dart';
export 'no_availability_model.dart';

class NoAvailabilityWidget extends StatefulWidget {
  const NoAvailabilityWidget({Key? key}) : super(key: key);

  @override
  _NoAvailabilityWidgetState createState() => _NoAvailabilityWidgetState();
}

class _NoAvailabilityWidgetState extends State<NoAvailabilityWidget> {
  late NoAvailabilityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoAvailabilityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.solidSadTear,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 60,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please choose another vehicle.\nSelected vehicle is not available \non chosen dates.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Overpass',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
