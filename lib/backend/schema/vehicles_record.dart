import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicles_record.g.dart';

abstract class VehiclesRecord
    implements Built<VehiclesRecord, VehiclesRecordBuilder> {
  static Serializer<VehiclesRecord> get serializer =>
      _$vehiclesRecordSerializer;

  @BuiltValueField(wireName: 'Make')
  String? get make;

  @BuiltValueField(wireName: 'Model')
  String? get model;

  @BuiltValueField(wireName: 'Plate')
  String? get plate;

  @BuiltValueField(wireName: 'Variant')
  String? get variant;

  String? get photourl;

  double? get dailyRate;

  double? get hourlyRate;

  int? get freeKm;

  double? get perKm;

  @BuiltValueField(wireName: 'Vendor')
  DocumentReference? get vendor;

  String? get description;

  int? get deposit;

  DocumentReference? get bundle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehiclesRecordBuilder builder) => builder
    ..make = ''
    ..model = ''
    ..plate = ''
    ..variant = ''
    ..photourl = ''
    ..dailyRate = 0.0
    ..hourlyRate = 0.0
    ..freeKm = 0
    ..perKm = 0.0
    ..description = ''
    ..deposit = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static VehiclesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      VehiclesRecord(
        (c) => c
          ..make = snapshot.data['Make']
          ..model = snapshot.data['Model']
          ..plate = snapshot.data['Plate']
          ..variant = snapshot.data['Variant']
          ..photourl = snapshot.data['photourl']
          ..dailyRate = snapshot.data['dailyRate']?.toDouble()
          ..hourlyRate = snapshot.data['hourlyRate']?.toDouble()
          ..freeKm = snapshot.data['freeKm']?.round()
          ..perKm = snapshot.data['perKm']?.toDouble()
          ..vendor = safeGet(() => toRef(snapshot.data['Vendor']))
          ..description = snapshot.data['description']
          ..deposit = snapshot.data['deposit']?.round()
          ..bundle = safeGet(() => toRef(snapshot.data['bundle']))
          ..ffRef = VehiclesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<VehiclesRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Vehicles',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  VehiclesRecord._();
  factory VehiclesRecord([void Function(VehiclesRecordBuilder) updates]) =
      _$VehiclesRecord;

  static VehiclesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehiclesRecordData({
  String? make,
  String? model,
  String? plate,
  String? variant,
  String? photourl,
  double? dailyRate,
  double? hourlyRate,
  int? freeKm,
  double? perKm,
  DocumentReference? vendor,
  String? description,
  int? deposit,
  DocumentReference? bundle,
}) {
  final firestoreData = serializers.toFirestore(
    VehiclesRecord.serializer,
    VehiclesRecord(
      (v) => v
        ..make = make
        ..model = model
        ..plate = plate
        ..variant = variant
        ..photourl = photourl
        ..dailyRate = dailyRate
        ..hourlyRate = hourlyRate
        ..freeKm = freeKm
        ..perKm = perKm
        ..vendor = vendor
        ..description = description
        ..deposit = deposit
        ..bundle = bundle,
    ),
  );

  return firestoreData;
}
