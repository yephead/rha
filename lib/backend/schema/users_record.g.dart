// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'storesettings',
      serializers.serialize(object.storesettings,
          specifiedType: const FullType(ColorsStruct)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vendor;
    if (value != null) {
      result
        ..add('Vendor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeLogo;
    if (value != null) {
      result
        ..add('storeLogo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userAvatar;
    if (value != null) {
      result
        ..add('userAvatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.midDiscount;
    if (value != null) {
      result
        ..add('midDiscount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.weekDiscount;
    if (value != null) {
      result
        ..add('weekDiscount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDelay;
    if (value != null) {
      result
        ..add('startDelay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDuration;
    if (value != null) {
      result
        ..add('startDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shortBio;
    if (value != null) {
      result
        ..add('shortBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discountBool;
    if (value != null) {
      result
        ..add('discountBool')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.openTIme;
    if (value != null) {
      result
        ..add('openTIme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.closeTime;
    if (value != null) {
      result
        ..add('closeTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emergencyName;
    if (value != null) {
      result
        ..add('emergencyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emergencyNumber;
    if (value != null) {
      result
        ..add('emergencyNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aboutTabHeading;
    if (value != null) {
      result
        ..add('aboutTabHeading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aboutDescrip;
    if (value != null) {
      result
        ..add('aboutDescrip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timing;
    if (value != null) {
      result
        ..add('timing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactUs;
    if (value != null) {
      result
        ..add('contactUs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Vendor':
          result.vendor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'storeLogo':
          result.storeLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userAvatar':
          result.userAvatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'midDiscount':
          result.midDiscount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'weekDiscount':
          result.weekDiscount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startDelay':
          result.startDelay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startDuration':
          result.startDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'shortBio':
          result.shortBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discountBool':
          result.discountBool = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'openTIme':
          result.openTIme = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'closeTime':
          result.closeTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emergencyName':
          result.emergencyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emergencyNumber':
          result.emergencyNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aboutTabHeading':
          result.aboutTabHeading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aboutDescrip':
          result.aboutDescrip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timing':
          result.timing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactUs':
          result.contactUs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'storesettings':
          result.storesettings.replace(serializers.deserialize(value,
              specifiedType: const FullType(ColorsStruct))! as ColorsStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final bool? vendor;
  @override
  final String? companyName;
  @override
  final String? storeLogo;
  @override
  final String? userAvatar;
  @override
  final int? midDiscount;
  @override
  final int? weekDiscount;
  @override
  final int? startDelay;
  @override
  final int? startDuration;
  @override
  final String? shortBio;
  @override
  final String? userName;
  @override
  final bool? discountBool;
  @override
  final DateTime? openTIme;
  @override
  final DateTime? closeTime;
  @override
  final int? age;
  @override
  final DateTime? dob;
  @override
  final String? address;
  @override
  final String? emergencyName;
  @override
  final String? emergencyNumber;
  @override
  final String? displayName;
  @override
  final String? aboutTabHeading;
  @override
  final String? aboutDescrip;
  @override
  final String? timing;
  @override
  final String? contactUs;
  @override
  final ColorsStruct storesettings;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.vendor,
      this.companyName,
      this.storeLogo,
      this.userAvatar,
      this.midDiscount,
      this.weekDiscount,
      this.startDelay,
      this.startDuration,
      this.shortBio,
      this.userName,
      this.discountBool,
      this.openTIme,
      this.closeTime,
      this.age,
      this.dob,
      this.address,
      this.emergencyName,
      this.emergencyNumber,
      this.displayName,
      this.aboutTabHeading,
      this.aboutDescrip,
      this.timing,
      this.contactUs,
      required this.storesettings,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        storesettings, r'UsersRecord', 'storesettings');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        vendor == other.vendor &&
        companyName == other.companyName &&
        storeLogo == other.storeLogo &&
        userAvatar == other.userAvatar &&
        midDiscount == other.midDiscount &&
        weekDiscount == other.weekDiscount &&
        startDelay == other.startDelay &&
        startDuration == other.startDuration &&
        shortBio == other.shortBio &&
        userName == other.userName &&
        discountBool == other.discountBool &&
        openTIme == other.openTIme &&
        closeTime == other.closeTime &&
        age == other.age &&
        dob == other.dob &&
        address == other.address &&
        emergencyName == other.emergencyName &&
        emergencyNumber == other.emergencyNumber &&
        displayName == other.displayName &&
        aboutTabHeading == other.aboutTabHeading &&
        aboutDescrip == other.aboutDescrip &&
        timing == other.timing &&
        contactUs == other.contactUs &&
        storesettings == other.storesettings &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode), vendor.hashCode), companyName.hashCode), storeLogo.hashCode), userAvatar.hashCode), midDiscount.hashCode), weekDiscount.hashCode),
                                                                                startDelay.hashCode),
                                                                            startDuration.hashCode),
                                                                        shortBio.hashCode),
                                                                    userName.hashCode),
                                                                discountBool.hashCode),
                                                            openTIme.hashCode),
                                                        closeTime.hashCode),
                                                    age.hashCode),
                                                dob.hashCode),
                                            address.hashCode),
                                        emergencyName.hashCode),
                                    emergencyNumber.hashCode),
                                displayName.hashCode),
                            aboutTabHeading.hashCode),
                        aboutDescrip.hashCode),
                    timing.hashCode),
                contactUs.hashCode),
            storesettings.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('vendor', vendor)
          ..add('companyName', companyName)
          ..add('storeLogo', storeLogo)
          ..add('userAvatar', userAvatar)
          ..add('midDiscount', midDiscount)
          ..add('weekDiscount', weekDiscount)
          ..add('startDelay', startDelay)
          ..add('startDuration', startDuration)
          ..add('shortBio', shortBio)
          ..add('userName', userName)
          ..add('discountBool', discountBool)
          ..add('openTIme', openTIme)
          ..add('closeTime', closeTime)
          ..add('age', age)
          ..add('dob', dob)
          ..add('address', address)
          ..add('emergencyName', emergencyName)
          ..add('emergencyNumber', emergencyNumber)
          ..add('displayName', displayName)
          ..add('aboutTabHeading', aboutTabHeading)
          ..add('aboutDescrip', aboutDescrip)
          ..add('timing', timing)
          ..add('contactUs', contactUs)
          ..add('storesettings', storesettings)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _vendor;
  bool? get vendor => _$this._vendor;
  set vendor(bool? vendor) => _$this._vendor = vendor;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _storeLogo;
  String? get storeLogo => _$this._storeLogo;
  set storeLogo(String? storeLogo) => _$this._storeLogo = storeLogo;

  String? _userAvatar;
  String? get userAvatar => _$this._userAvatar;
  set userAvatar(String? userAvatar) => _$this._userAvatar = userAvatar;

  int? _midDiscount;
  int? get midDiscount => _$this._midDiscount;
  set midDiscount(int? midDiscount) => _$this._midDiscount = midDiscount;

  int? _weekDiscount;
  int? get weekDiscount => _$this._weekDiscount;
  set weekDiscount(int? weekDiscount) => _$this._weekDiscount = weekDiscount;

  int? _startDelay;
  int? get startDelay => _$this._startDelay;
  set startDelay(int? startDelay) => _$this._startDelay = startDelay;

  int? _startDuration;
  int? get startDuration => _$this._startDuration;
  set startDuration(int? startDuration) =>
      _$this._startDuration = startDuration;

  String? _shortBio;
  String? get shortBio => _$this._shortBio;
  set shortBio(String? shortBio) => _$this._shortBio = shortBio;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  bool? _discountBool;
  bool? get discountBool => _$this._discountBool;
  set discountBool(bool? discountBool) => _$this._discountBool = discountBool;

  DateTime? _openTIme;
  DateTime? get openTIme => _$this._openTIme;
  set openTIme(DateTime? openTIme) => _$this._openTIme = openTIme;

  DateTime? _closeTime;
  DateTime? get closeTime => _$this._closeTime;
  set closeTime(DateTime? closeTime) => _$this._closeTime = closeTime;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _emergencyName;
  String? get emergencyName => _$this._emergencyName;
  set emergencyName(String? emergencyName) =>
      _$this._emergencyName = emergencyName;

  String? _emergencyNumber;
  String? get emergencyNumber => _$this._emergencyNumber;
  set emergencyNumber(String? emergencyNumber) =>
      _$this._emergencyNumber = emergencyNumber;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _aboutTabHeading;
  String? get aboutTabHeading => _$this._aboutTabHeading;
  set aboutTabHeading(String? aboutTabHeading) =>
      _$this._aboutTabHeading = aboutTabHeading;

  String? _aboutDescrip;
  String? get aboutDescrip => _$this._aboutDescrip;
  set aboutDescrip(String? aboutDescrip) => _$this._aboutDescrip = aboutDescrip;

  String? _timing;
  String? get timing => _$this._timing;
  set timing(String? timing) => _$this._timing = timing;

  String? _contactUs;
  String? get contactUs => _$this._contactUs;
  set contactUs(String? contactUs) => _$this._contactUs = contactUs;

  ColorsStructBuilder? _storesettings;
  ColorsStructBuilder get storesettings =>
      _$this._storesettings ??= new ColorsStructBuilder();
  set storesettings(ColorsStructBuilder? storesettings) =>
      _$this._storesettings = storesettings;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _vendor = $v.vendor;
      _companyName = $v.companyName;
      _storeLogo = $v.storeLogo;
      _userAvatar = $v.userAvatar;
      _midDiscount = $v.midDiscount;
      _weekDiscount = $v.weekDiscount;
      _startDelay = $v.startDelay;
      _startDuration = $v.startDuration;
      _shortBio = $v.shortBio;
      _userName = $v.userName;
      _discountBool = $v.discountBool;
      _openTIme = $v.openTIme;
      _closeTime = $v.closeTime;
      _age = $v.age;
      _dob = $v.dob;
      _address = $v.address;
      _emergencyName = $v.emergencyName;
      _emergencyNumber = $v.emergencyNumber;
      _displayName = $v.displayName;
      _aboutTabHeading = $v.aboutTabHeading;
      _aboutDescrip = $v.aboutDescrip;
      _timing = $v.timing;
      _contactUs = $v.contactUs;
      _storesettings = $v.storesettings.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              vendor: vendor,
              companyName: companyName,
              storeLogo: storeLogo,
              userAvatar: userAvatar,
              midDiscount: midDiscount,
              weekDiscount: weekDiscount,
              startDelay: startDelay,
              startDuration: startDuration,
              shortBio: shortBio,
              userName: userName,
              discountBool: discountBool,
              openTIme: openTIme,
              closeTime: closeTime,
              age: age,
              dob: dob,
              address: address,
              emergencyName: emergencyName,
              emergencyNumber: emergencyNumber,
              displayName: displayName,
              aboutTabHeading: aboutTabHeading,
              aboutDescrip: aboutDescrip,
              timing: timing,
              contactUs: contactUs,
              storesettings: storesettings.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storesettings';
        storesettings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
