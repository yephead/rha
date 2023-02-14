// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

int? daysBetween(
  DateTime? startDate,
  DateTime? endDate,
) {
  // find number of days between two dates rounded up
  if (startDate == null || endDate == null) {
    return null;
  }
  var hoursBetween = endDate.difference(startDate).inHours;
  double daysDouble = hoursBetween / 24;
  return daysDouble.ceil();
}
