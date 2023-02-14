// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BundlesRecord> _$bundlesRecordSerializer =
    new _$BundlesRecordSerializer();

class _$BundlesRecordSerializer implements StructuredSerializer<BundlesRecord> {
  @override
  final Iterable<Type> types = const [BundlesRecord, _$BundlesRecord];
  @override
  final String wireName = 'BundlesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BundlesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pic;
    if (value != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gallery;
    if (value != null) {
      result
        ..add('gallery')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.dailyRate;
    if (value != null) {
      result
        ..add('dailyRate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.vehicles;
    if (value != null) {
      result
        ..add('vehicles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.freeKm;
    if (value != null) {
      result
        ..add('freeKm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.perKm;
    if (value != null) {
      result
        ..add('perKm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
    value = object.variant;
    if (value != null) {
      result
        ..add('Variant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.online;
    if (value != null) {
      result
        ..add('online')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  BundlesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BundlesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gallery':
          result.gallery.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'dailyRate':
          result.dailyRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'vehicles':
          result.vehicles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'freeKm':
          result.freeKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'perKm':
          result.perKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Variant':
          result.variant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$BundlesRecord extends BundlesRecord {
  @override
  final String? pic;
  @override
  final BuiltList<String>? gallery;
  @override
  final double? dailyRate;
  @override
  final BuiltList<DocumentReference<Object?>>? vehicles;
  @override
  final double? freeKm;
  @override
  final double? perKm;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? variant;
  @override
  final String? description;
  @override
  final bool? online;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BundlesRecord([void Function(BundlesRecordBuilder)? updates]) =>
      (new BundlesRecordBuilder()..update(updates))._build();

  _$BundlesRecord._(
      {this.pic,
      this.gallery,
      this.dailyRate,
      this.vehicles,
      this.freeKm,
      this.perKm,
      this.make,
      this.model,
      this.variant,
      this.description,
      this.online,
      this.ffRef})
      : super._();

  @override
  BundlesRecord rebuild(void Function(BundlesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BundlesRecordBuilder toBuilder() => new BundlesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundlesRecord &&
        pic == other.pic &&
        gallery == other.gallery &&
        dailyRate == other.dailyRate &&
        vehicles == other.vehicles &&
        freeKm == other.freeKm &&
        perKm == other.perKm &&
        make == other.make &&
        model == other.model &&
        variant == other.variant &&
        description == other.description &&
        online == other.online &&
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
                                            $jc($jc(0, pic.hashCode),
                                                gallery.hashCode),
                                            dailyRate.hashCode),
                                        vehicles.hashCode),
                                    freeKm.hashCode),
                                perKm.hashCode),
                            make.hashCode),
                        model.hashCode),
                    variant.hashCode),
                description.hashCode),
            online.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BundlesRecord')
          ..add('pic', pic)
          ..add('gallery', gallery)
          ..add('dailyRate', dailyRate)
          ..add('vehicles', vehicles)
          ..add('freeKm', freeKm)
          ..add('perKm', perKm)
          ..add('make', make)
          ..add('model', model)
          ..add('variant', variant)
          ..add('description', description)
          ..add('online', online)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BundlesRecordBuilder
    implements Builder<BundlesRecord, BundlesRecordBuilder> {
  _$BundlesRecord? _$v;

  String? _pic;
  String? get pic => _$this._pic;
  set pic(String? pic) => _$this._pic = pic;

  ListBuilder<String>? _gallery;
  ListBuilder<String> get gallery =>
      _$this._gallery ??= new ListBuilder<String>();
  set gallery(ListBuilder<String>? gallery) => _$this._gallery = gallery;

  double? _dailyRate;
  double? get dailyRate => _$this._dailyRate;
  set dailyRate(double? dailyRate) => _$this._dailyRate = dailyRate;

  ListBuilder<DocumentReference<Object?>>? _vehicles;
  ListBuilder<DocumentReference<Object?>> get vehicles =>
      _$this._vehicles ??= new ListBuilder<DocumentReference<Object?>>();
  set vehicles(ListBuilder<DocumentReference<Object?>>? vehicles) =>
      _$this._vehicles = vehicles;

  double? _freeKm;
  double? get freeKm => _$this._freeKm;
  set freeKm(double? freeKm) => _$this._freeKm = freeKm;

  double? _perKm;
  double? get perKm => _$this._perKm;
  set perKm(double? perKm) => _$this._perKm = perKm;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _variant;
  String? get variant => _$this._variant;
  set variant(String? variant) => _$this._variant = variant;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _online;
  bool? get online => _$this._online;
  set online(bool? online) => _$this._online = online;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BundlesRecordBuilder() {
    BundlesRecord._initializeBuilder(this);
  }

  BundlesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pic = $v.pic;
      _gallery = $v.gallery?.toBuilder();
      _dailyRate = $v.dailyRate;
      _vehicles = $v.vehicles?.toBuilder();
      _freeKm = $v.freeKm;
      _perKm = $v.perKm;
      _make = $v.make;
      _model = $v.model;
      _variant = $v.variant;
      _description = $v.description;
      _online = $v.online;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BundlesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BundlesRecord;
  }

  @override
  void update(void Function(BundlesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BundlesRecord build() => _build();

  _$BundlesRecord _build() {
    _$BundlesRecord _$result;
    try {
      _$result = _$v ??
          new _$BundlesRecord._(
              pic: pic,
              gallery: _gallery?.build(),
              dailyRate: dailyRate,
              vehicles: _vehicles?.build(),
              freeKm: freeKm,
              perKm: perKm,
              make: make,
              model: model,
              variant: variant,
              description: description,
              online: online,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gallery';
        _gallery?.build();

        _$failedField = 'vehicles';
        _vehicles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BundlesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
