// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RidersRecord> _$ridersRecordSerializer =
    new _$RidersRecordSerializer();

class _$RidersRecordSerializer implements StructuredSerializer<RidersRecord> {
  @override
  final Iterable<Type> types = const [RidersRecord, _$RidersRecord];
  @override
  final String wireName = 'RidersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RidersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.shortBio;
    if (value != null) {
      result
        ..add('shortBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idNo;
    if (value != null) {
      result
        ..add('idNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idPic;
    if (value != null) {
      result
        ..add('idPic')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
  RidersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RidersRecordBuilder();

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
        case 'shortBio':
          result.shortBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idNo':
          result.idNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idPic':
          result.idPic.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'emergencyName':
          result.emergencyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emergencyNumber':
          result.emergencyNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RidersRecord extends RidersRecord {
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
  final String? shortBio;
  @override
  final String? idNo;
  @override
  final BuiltList<String>? idPic;
  @override
  final String? emergencyName;
  @override
  final String? emergencyNumber;
  @override
  final DateTime? dob;
  @override
  final int? age;
  @override
  final String? userName;
  @override
  final String? address;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RidersRecord([void Function(RidersRecordBuilder)? updates]) =>
      (new RidersRecordBuilder()..update(updates))._build();

  _$RidersRecord._(
      {this.email,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.shortBio,
      this.idNo,
      this.idPic,
      this.emergencyName,
      this.emergencyNumber,
      this.dob,
      this.age,
      this.userName,
      this.address,
      this.ffRef})
      : super._();

  @override
  RidersRecord rebuild(void Function(RidersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RidersRecordBuilder toBuilder() => new RidersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RidersRecord &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        shortBio == other.shortBio &&
        idNo == other.idNo &&
        idPic == other.idPic &&
        emergencyName == other.emergencyName &&
        emergencyNumber == other.emergencyNumber &&
        dob == other.dob &&
        age == other.age &&
        userName == other.userName &&
        address == other.address &&
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
                                                            $jc(0,
                                                                email.hashCode),
                                                            photoUrl.hashCode),
                                                        uid.hashCode),
                                                    createdTime.hashCode),
                                                phoneNumber.hashCode),
                                            shortBio.hashCode),
                                        idNo.hashCode),
                                    idPic.hashCode),
                                emergencyName.hashCode),
                            emergencyNumber.hashCode),
                        dob.hashCode),
                    age.hashCode),
                userName.hashCode),
            address.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RidersRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('shortBio', shortBio)
          ..add('idNo', idNo)
          ..add('idPic', idPic)
          ..add('emergencyName', emergencyName)
          ..add('emergencyNumber', emergencyNumber)
          ..add('dob', dob)
          ..add('age', age)
          ..add('userName', userName)
          ..add('address', address)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RidersRecordBuilder
    implements Builder<RidersRecord, RidersRecordBuilder> {
  _$RidersRecord? _$v;

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

  String? _shortBio;
  String? get shortBio => _$this._shortBio;
  set shortBio(String? shortBio) => _$this._shortBio = shortBio;

  String? _idNo;
  String? get idNo => _$this._idNo;
  set idNo(String? idNo) => _$this._idNo = idNo;

  ListBuilder<String>? _idPic;
  ListBuilder<String> get idPic => _$this._idPic ??= new ListBuilder<String>();
  set idPic(ListBuilder<String>? idPic) => _$this._idPic = idPic;

  String? _emergencyName;
  String? get emergencyName => _$this._emergencyName;
  set emergencyName(String? emergencyName) =>
      _$this._emergencyName = emergencyName;

  String? _emergencyNumber;
  String? get emergencyNumber => _$this._emergencyNumber;
  set emergencyNumber(String? emergencyNumber) =>
      _$this._emergencyNumber = emergencyNumber;

  DateTime? _dob;
  DateTime? get dob => _$this._dob;
  set dob(DateTime? dob) => _$this._dob = dob;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RidersRecordBuilder() {
    RidersRecord._initializeBuilder(this);
  }

  RidersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _shortBio = $v.shortBio;
      _idNo = $v.idNo;
      _idPic = $v.idPic?.toBuilder();
      _emergencyName = $v.emergencyName;
      _emergencyNumber = $v.emergencyNumber;
      _dob = $v.dob;
      _age = $v.age;
      _userName = $v.userName;
      _address = $v.address;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RidersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RidersRecord;
  }

  @override
  void update(void Function(RidersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RidersRecord build() => _build();

  _$RidersRecord _build() {
    _$RidersRecord _$result;
    try {
      _$result = _$v ??
          new _$RidersRecord._(
              email: email,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              shortBio: shortBio,
              idNo: idNo,
              idPic: _idPic?.build(),
              emergencyName: emergencyName,
              emergencyNumber: emergencyNumber,
              dob: dob,
              age: age,
              userName: userName,
              address: address,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'idPic';
        _idPic?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RidersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
