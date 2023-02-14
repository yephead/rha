import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'Vendor')
  bool? get vendor;

  String? get companyName;

  String? get storeLogo;

  String? get userAvatar;

  int? get midDiscount;

  int? get weekDiscount;

  int? get startDelay;

  int? get startDuration;

  String? get shortBio;

  String? get userName;

  bool? get discountBool;

  DateTime? get openTIme;

  DateTime? get closeTime;

  int? get age;

  DateTime? get dob;

  String? get address;

  String? get emergencyName;

  String? get emergencyNumber;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get aboutTabHeading;

  String? get aboutDescrip;

  String? get timing;

  String? get contactUs;

  ColorsStruct get storesettings;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..vendor = false
    ..companyName = ''
    ..storeLogo = ''
    ..userAvatar = ''
    ..midDiscount = 0
    ..weekDiscount = 0
    ..startDelay = 0
    ..startDuration = 0
    ..shortBio = ''
    ..userName = ''
    ..discountBool = false
    ..age = 0
    ..address = ''
    ..emergencyName = ''
    ..emergencyNumber = ''
    ..displayName = ''
    ..aboutTabHeading = ''
    ..aboutDescrip = ''
    ..timing = ''
    ..contactUs = ''
    ..storesettings = ColorsStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? vendor,
  String? companyName,
  String? storeLogo,
  String? userAvatar,
  int? midDiscount,
  int? weekDiscount,
  int? startDelay,
  int? startDuration,
  String? shortBio,
  String? userName,
  bool? discountBool,
  DateTime? openTIme,
  DateTime? closeTime,
  int? age,
  DateTime? dob,
  String? address,
  String? emergencyName,
  String? emergencyNumber,
  String? displayName,
  String? aboutTabHeading,
  String? aboutDescrip,
  String? timing,
  String? contactUs,
  ColorsStruct? storesettings,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..vendor = vendor
        ..companyName = companyName
        ..storeLogo = storeLogo
        ..userAvatar = userAvatar
        ..midDiscount = midDiscount
        ..weekDiscount = weekDiscount
        ..startDelay = startDelay
        ..startDuration = startDuration
        ..shortBio = shortBio
        ..userName = userName
        ..discountBool = discountBool
        ..openTIme = openTIme
        ..closeTime = closeTime
        ..age = age
        ..dob = dob
        ..address = address
        ..emergencyName = emergencyName
        ..emergencyNumber = emergencyNumber
        ..displayName = displayName
        ..aboutTabHeading = aboutTabHeading
        ..aboutDescrip = aboutDescrip
        ..timing = timing
        ..contactUs = contactUs
        ..storesettings = ColorsStructBuilder(),
    ),
  );

  // Handle nested data for "storesettings" field.
  addColorsStructData(firestoreData, storesettings, 'storesettings');

  return firestoreData;
}
