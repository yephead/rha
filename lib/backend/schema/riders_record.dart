import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'riders_record.g.dart';

abstract class RidersRecord
    implements Built<RidersRecord, RidersRecordBuilder> {
  static Serializer<RidersRecord> get serializer => _$ridersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get shortBio;

  String? get idNo;

  BuiltList<String>? get idPic;

  String? get emergencyName;

  String? get emergencyNumber;

  DateTime? get dob;

  int? get age;

  String? get userName;

  String? get address;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(RidersRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..shortBio = ''
    ..idNo = ''
    ..idPic = ListBuilder()
    ..emergencyName = ''
    ..emergencyNumber = ''
    ..age = 0
    ..userName = ''
    ..address = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('riders')
          : FirebaseFirestore.instance.collectionGroup('riders');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('riders').doc();

  static Stream<RidersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RidersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RidersRecord._();
  factory RidersRecord([void Function(RidersRecordBuilder) updates]) =
      _$RidersRecord;

  static RidersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRidersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortBio,
  String? idNo,
  String? emergencyName,
  String? emergencyNumber,
  DateTime? dob,
  int? age,
  String? userName,
  String? address,
}) {
  final firestoreData = serializers.toFirestore(
    RidersRecord.serializer,
    RidersRecord(
      (r) => r
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..shortBio = shortBio
        ..idNo = idNo
        ..idPic = null
        ..emergencyName = emergencyName
        ..emergencyNumber = emergencyNumber
        ..dob = dob
        ..age = age
        ..userName = userName
        ..address = address,
    ),
  );

  return firestoreData;
}
