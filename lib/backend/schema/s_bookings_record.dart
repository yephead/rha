import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 's_bookings_record.g.dart';

abstract class SBookingsRecord
    implements Built<SBookingsRecord, SBookingsRecordBuilder> {
  static Serializer<SBookingsRecord> get serializer =>
      _$sBookingsRecordSerializer;

  DocumentReference? get bookedBy;

  DateTime? get startDate;

  DateTime? get endDate;

  String? get status;

  DocumentReference? get vendor;

  double? get startAmt;

  double? get advance;

  double? get settlement;

  double? get deposit;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SBookingsRecordBuilder builder) => builder
    ..status = ''
    ..startAmt = 0.0
    ..advance = 0.0
    ..settlement = 0.0
    ..deposit = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sBookings')
          : FirebaseFirestore.instance.collectionGroup('sBookings');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('sBookings').doc();

  static Stream<SBookingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SBookingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SBookingsRecord._();
  factory SBookingsRecord([void Function(SBookingsRecordBuilder) updates]) =
      _$SBookingsRecord;

  static SBookingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSBookingsRecordData({
  DocumentReference? bookedBy,
  DateTime? startDate,
  DateTime? endDate,
  String? status,
  DocumentReference? vendor,
  double? startAmt,
  double? advance,
  double? settlement,
  double? deposit,
}) {
  final firestoreData = serializers.toFirestore(
    SBookingsRecord.serializer,
    SBookingsRecord(
      (s) => s
        ..bookedBy = bookedBy
        ..startDate = startDate
        ..endDate = endDate
        ..status = status
        ..vendor = vendor
        ..startAmt = startAmt
        ..advance = advance
        ..settlement = settlement
        ..deposit = deposit,
    ),
  );

  return firestoreData;
}
