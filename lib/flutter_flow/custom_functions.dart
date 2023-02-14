import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool conflictingBooking(
  DateTime? startInput,
  DateTime? endInput,
  List<SBookingsRecord>? sBookings,
) {
  // Add your fimport 'dart:math' as math;

  // Is there any booking conflict ?
  return sBookings!.any((el) =>
      !el.startDate!.isAfter(endInput!) && !el.endDate!.isBefore(startInput!));
}

double price(
  double? dailyRate,
  int? days,
) {
  // multiplication
  var rateValue = dailyRate! * days!;
  return rateValue;
}

double priceCopy(
  double? dailyRate,
  int? days,
  int? midDiscount,
  int? weekDiscount,
) {
  // multiplication
  var rateValue = dailyRate! * days!;
  if (days > 7) {
    rateValue = rateValue * (100 - weekDiscount!) / 100;
    return rateValue;
  } else if (days > 3) {
    rateValue = rateValue * (100 - midDiscount!) / 100;
    return rateValue;
  } else {
    return rateValue;
  }
}

DateTime startTime(int? delayHours) {
  // delay current time by certian number of hours
  DateTime now = DateTime.now();
  if (delayHours != null && delayHours > 0) {
    return now.add(Duration(hours: delayHours));
  }
  return now;
}

DateTime endTimeDefault(
  int? delayHours,
  int? minHours,
) {
  // delay current time by certian number of hours
  DateTime now = DateTime.now();
  if (delayHours != null &&
      delayHours > 0 &&
      minHours != null &&
      minHours > 0) {
    int totalHours = delayHours + minHours;
    return now.add(Duration(hours: totalHours));
  }
  return now;
}

int? tryB(
  DateTime? startDate,
  DateTime? endDate,
) {
  // Add your function code here!if (startDate == null || endDate == null)
  if (startDate == null || endDate == null) {
    return null;
  }
  var duration = endDate.difference(startDate).inHours;
  return duration.ceil();
}
