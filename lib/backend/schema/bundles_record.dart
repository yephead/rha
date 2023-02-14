import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bundles_record.g.dart';

abstract class BundlesRecord
    implements Built<BundlesRecord, BundlesRecordBuilder> {
  static Serializer<BundlesRecord> get serializer => _$bundlesRecordSerializer;

  String? get pic;

  BuiltList<String>? get gallery;

  double? get dailyRate;

  BuiltList<DocumentReference>? get vehicles;

  double? get freeKm;

  double? get perKm;

  @BuiltValueField(wireName: 'Make')
  String? get make;

  @BuiltValueField(wireName: 'Model')
  String? get model;

  @BuiltValueField(wireName: 'Variant')
  String? get variant;

  String? get description;

  bool? get online;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BundlesRecordBuilder builder) => builder
    ..pic = ''
    ..gallery = ListBuilder()
    ..dailyRate = 0.0
    ..vehicles = ListBuilder()
    ..freeKm = 0.0
    ..perKm = 0.0
    ..make = ''
    ..model = ''
    ..variant = ''
    ..description = ''
    ..online = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bundles')
          : FirebaseFirestore.instance.collectionGroup('bundles');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bundles').doc();

  static Stream<BundlesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BundlesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BundlesRecord._();
  factory BundlesRecord([void Function(BundlesRecordBuilder) updates]) =
      _$BundlesRecord;

  static BundlesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBundlesRecordData({
  String? pic,
  double? dailyRate,
  double? freeKm,
  double? perKm,
  String? make,
  String? model,
  String? variant,
  String? description,
  bool? online,
}) {
  final firestoreData = serializers.toFirestore(
    BundlesRecord.serializer,
    BundlesRecord(
      (b) => b
        ..pic = pic
        ..gallery = null
        ..dailyRate = dailyRate
        ..vehicles = null
        ..freeKm = freeKm
        ..perKm = perKm
        ..make = make
        ..model = model
        ..variant = variant
        ..description = description
        ..online = online,
    ),
  );

  return firestoreData;
}
