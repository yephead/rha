import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RiderDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameRider widget.
  TextEditingController? nameRiderController;
  String? Function(BuildContext, String?)? nameRiderControllerValidator;
  // State field(s) for ageRider widget.
  TextEditingController? ageRiderController;
  String? Function(BuildContext, String?)? ageRiderControllerValidator;
  // State field(s) for emailRider widget.
  TextEditingController? emailRiderController;
  String? Function(BuildContext, String?)? emailRiderControllerValidator;
  // State field(s) for riderAddress widget.
  TextEditingController? riderAddressController;
  String? Function(BuildContext, String?)? riderAddressControllerValidator;
  // State field(s) for riderNumber widget.
  TextEditingController? riderNumberController;
  String? Function(BuildContext, String?)? riderNumberControllerValidator;
  // State field(s) for idNumber widget.
  TextEditingController? idNumberController;
  String? Function(BuildContext, String?)? idNumberControllerValidator;
  // State field(s) for emergencyNameContact widget.
  TextEditingController? emergencyNameContactController;
  String? Function(BuildContext, String?)?
      emergencyNameContactControllerValidator;
  // State field(s) for emergencyNoContact widget.
  TextEditingController? emergencyNoContactController;
  String? Function(BuildContext, String?)?
      emergencyNoContactControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  RidersRecord? rider;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameRiderController?.dispose();
    ageRiderController?.dispose();
    emailRiderController?.dispose();
    riderAddressController?.dispose();
    riderNumberController?.dispose();
    idNumberController?.dispose();
    emergencyNameContactController?.dispose();
    emergencyNoContactController?.dispose();
  }

  /// Additional helper methods are added here.

}
