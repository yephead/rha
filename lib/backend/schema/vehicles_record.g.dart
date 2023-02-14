// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehiclesRecord> _$vehiclesRecordSerializer =
    new _$VehiclesRecordSerializer();

class _$VehiclesRecordSerializer
    implements StructuredSerializer<VehiclesRecord> {
  @override
  final Iterable<Type> types = const [VehiclesRecord, _$VehiclesRecord];
  @override
  final String wireName = 'VehiclesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VehiclesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.make;
    if (value != null) {
      result
        ..add('Make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('Model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plate;
    if (value != null) {
      result
        ..add('Plate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.variant;
    if (value != null) {
      result
        ..add('Variant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photourl;
    if (value != null) {
      result
        ..add('photourl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dailyRate;
    if (value != null) {
      result
        ..add('dailyRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hourlyRate;
    if (value != null) {
      result
        ..add('hourlyRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.freeKm;
    if (value != null) {
      result
        ..add('freeKm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perKm;
    if (value != null) {
      result
        ..add('perKm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.vendor;
    if (value != null) {
      result
        ..add('Vendor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deposit;
    if (value != null) {
      result
        ..add('deposit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bundle;
    if (value != null) {
      result
        ..add('bundle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  VehiclesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehiclesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Plate':
          result.plate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Variant':
          result.variant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photourl':
          result.photourl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dailyRate':
          result.dailyRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hourlyRate':
          result.hourlyRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'freeKm':
          result.freeKm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perKm':
          result.perKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Vendor':
          result.vendor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deposit':
          result.deposit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bundle':
          result.bundle = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$VehiclesRecord extends VehiclesRecord {
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? plate;
  @override
  final String? variant;
  @override
  final String? photourl;
  @override
  final double? dailyRate;
  @override
  final double? hourlyRate;
  @override
  final int? freeKm;
  @override
  final double? perKm;
  @override
  final DocumentReference<Object?>? vendor;
  @override
  final String? description;
  @override
  final int? deposit;
  @override
  final DocumentReference<Object?>? bundle;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehiclesRecord([void Function(VehiclesRecordBuilder)? updates]) =>
      (new VehiclesRecordBuilder()..update(updates))._build();

  _$VehiclesRecord._(
      {this.make,
      this.model,
      this.plate,
      this.variant,
      this.photourl,
      this.dailyRate,
      this.hourlyRate,
      this.freeKm,
      this.perKm,
      this.vendor,
      this.description,
      this.deposit,
      this.bundle,
      this.ffRef})
      : super._();

  @override
  VehiclesRecord rebuild(void Function(VehiclesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehiclesRecordBuilder toBuilder() =>
      new VehiclesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehiclesRecord &&
        make == other.make &&
        model == other.model &&
        plate == other.plate &&
        variant == other.variant &&
        photourl == other.photourl &&
        dailyRate == other.dailyRate &&
        hourlyRate == other.hourlyRate &&
        freeKm == other.freeKm &&
        perKm == other.perKm &&
        vendor == other.vendor &&
        description == other.description &&
        deposit == other.deposit &&
        bundle == other.bundle &&
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
                                                    $jc($jc(0, make.hashCode),
                                                        model.hashCode),
                                                    plate.hashCode),
                                                variant.hashCode),
                                            photourl.hashCode),
                                        dailyRate.hashCode),
                                    hourlyRate.hashCode),
                                freeKm.hashCode),
                            perKm.hashCode),
                        vendor.hashCode),
                    description.hashCode),
                deposit.hashCode),
            bundle.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VehiclesRecord')
          ..add('make', make)
          ..add('model', model)
          ..add('plate', plate)
          ..add('variant', variant)
          ..add('photourl', photourl)
          ..add('dailyRate', dailyRate)
          ..add('hourlyRate', hourlyRate)
          ..add('freeKm', freeKm)
          ..add('perKm', perKm)
          ..add('vendor', vendor)
          ..add('description', description)
          ..add('deposit', deposit)
          ..add('bundle', bundle)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehiclesRecordBuilder
    implements Builder<VehiclesRecord, VehiclesRecordBuilder> {
  _$VehiclesRecord? _$v;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _plate;
  String? get plate => _$this._plate;
  set plate(String? plate) => _$this._plate = plate;

  String? _variant;
  String? get variant => _$this._variant;
  set variant(String? variant) => _$this._variant = variant;

  String? _photourl;
  String? get photourl => _$this._photourl;
  set photourl(String? photourl) => _$this._photourl = photourl;

  double? _dailyRate;
  double? get dailyRate => _$this._dailyRate;
  set dailyRate(double? dailyRate) => _$this._dailyRate = dailyRate;

  double? _hourlyRate;
  double? get hourlyRate => _$this._hourlyRate;
  set hourlyRate(double? hourlyRate) => _$this._hourlyRate = hourlyRate;

  int? _freeKm;
  int? get freeKm => _$this._freeKm;
  set freeKm(int? freeKm) => _$this._freeKm = freeKm;

  double? _perKm;
  double? get perKm => _$this._perKm;
  set perKm(double? perKm) => _$this._perKm = perKm;

  DocumentReference<Object?>? _vendor;
  DocumentReference<Object?>? get vendor => _$this._vendor;
  set vendor(DocumentReference<Object?>? vendor) => _$this._vendor = vendor;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _deposit;
  int? get deposit => _$this._deposit;
  set deposit(int? deposit) => _$this._deposit = deposit;

  DocumentReference<Object?>? _bundle;
  DocumentReference<Object?>? get bundle => _$this._bundle;
  set bundle(DocumentReference<Object?>? bundle) => _$this._bundle = bundle;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VehiclesRecordBuilder() {
    VehiclesRecord._initializeBuilder(this);
  }

  VehiclesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _make = $v.make;
      _model = $v.model;
      _plate = $v.plate;
      _variant = $v.variant;
      _photourl = $v.photourl;
      _dailyRate = $v.dailyRate;
      _hourlyRate = $v.hourlyRate;
      _freeKm = $v.freeKm;
      _perKm = $v.perKm;
      _vendor = $v.vendor;
      _description = $v.description;
      _deposit = $v.deposit;
      _bundle = $v.bundle;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehiclesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehiclesRecord;
  }

  @override
  void update(void Function(VehiclesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehiclesRecord build() => _build();

  _$VehiclesRecord _build() {
    final _$result = _$v ??
        new _$VehiclesRecord._(
            make: make,
            model: model,
            plate: plate,
            variant: variant,
            photourl: photourl,
            dailyRate: dailyRate,
            hourlyRate: hourlyRate,
            freeKm: freeKm,
            perKm: perKm,
            vendor: vendor,
            description: description,
            deposit: deposit,
            bundle: bundle,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
