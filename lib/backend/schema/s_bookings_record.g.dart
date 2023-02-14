// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's_bookings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SBookingsRecord> _$sBookingsRecordSerializer =
    new _$SBookingsRecordSerializer();

class _$SBookingsRecordSerializer
    implements StructuredSerializer<SBookingsRecord> {
  @override
  final Iterable<Type> types = const [SBookingsRecord, _$SBookingsRecord];
  @override
  final String wireName = 'SBookingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SBookingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookedBy;
    if (value != null) {
      result
        ..add('bookedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vendor;
    if (value != null) {
      result
        ..add('vendor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.startAmt;
    if (value != null) {
      result
        ..add('startAmt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.advance;
    if (value != null) {
      result
        ..add('advance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.settlement;
    if (value != null) {
      result
        ..add('settlement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deposit;
    if (value != null) {
      result
        ..add('deposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  SBookingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SBookingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bookedBy':
          result.bookedBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vendor':
          result.vendor = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'startAmt':
          result.startAmt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'advance':
          result.advance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'settlement':
          result.settlement = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'deposit':
          result.deposit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$SBookingsRecord extends SBookingsRecord {
  @override
  final DocumentReference<Object?>? bookedBy;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? vendor;
  @override
  final double? startAmt;
  @override
  final double? advance;
  @override
  final double? settlement;
  @override
  final double? deposit;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SBookingsRecord([void Function(SBookingsRecordBuilder)? updates]) =>
      (new SBookingsRecordBuilder()..update(updates))._build();

  _$SBookingsRecord._(
      {this.bookedBy,
      this.startDate,
      this.endDate,
      this.status,
      this.vendor,
      this.startAmt,
      this.advance,
      this.settlement,
      this.deposit,
      this.ffRef})
      : super._();

  @override
  SBookingsRecord rebuild(void Function(SBookingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SBookingsRecordBuilder toBuilder() =>
      new SBookingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SBookingsRecord &&
        bookedBy == other.bookedBy &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        status == other.status &&
        vendor == other.vendor &&
        startAmt == other.startAmt &&
        advance == other.advance &&
        settlement == other.settlement &&
        deposit == other.deposit &&
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
                                    $jc($jc(0, bookedBy.hashCode),
                                        startDate.hashCode),
                                    endDate.hashCode),
                                status.hashCode),
                            vendor.hashCode),
                        startAmt.hashCode),
                    advance.hashCode),
                settlement.hashCode),
            deposit.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SBookingsRecord')
          ..add('bookedBy', bookedBy)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('status', status)
          ..add('vendor', vendor)
          ..add('startAmt', startAmt)
          ..add('advance', advance)
          ..add('settlement', settlement)
          ..add('deposit', deposit)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SBookingsRecordBuilder
    implements Builder<SBookingsRecord, SBookingsRecordBuilder> {
  _$SBookingsRecord? _$v;

  DocumentReference<Object?>? _bookedBy;
  DocumentReference<Object?>? get bookedBy => _$this._bookedBy;
  set bookedBy(DocumentReference<Object?>? bookedBy) =>
      _$this._bookedBy = bookedBy;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _vendor;
  DocumentReference<Object?>? get vendor => _$this._vendor;
  set vendor(DocumentReference<Object?>? vendor) => _$this._vendor = vendor;

  double? _startAmt;
  double? get startAmt => _$this._startAmt;
  set startAmt(double? startAmt) => _$this._startAmt = startAmt;

  double? _advance;
  double? get advance => _$this._advance;
  set advance(double? advance) => _$this._advance = advance;

  double? _settlement;
  double? get settlement => _$this._settlement;
  set settlement(double? settlement) => _$this._settlement = settlement;

  double? _deposit;
  double? get deposit => _$this._deposit;
  set deposit(double? deposit) => _$this._deposit = deposit;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SBookingsRecordBuilder() {
    SBookingsRecord._initializeBuilder(this);
  }

  SBookingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookedBy = $v.bookedBy;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _status = $v.status;
      _vendor = $v.vendor;
      _startAmt = $v.startAmt;
      _advance = $v.advance;
      _settlement = $v.settlement;
      _deposit = $v.deposit;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SBookingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SBookingsRecord;
  }

  @override
  void update(void Function(SBookingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SBookingsRecord build() => _build();

  _$SBookingsRecord _build() {
    final _$result = _$v ??
        new _$SBookingsRecord._(
            bookedBy: bookedBy,
            startDate: startDate,
            endDate: endDate,
            status: status,
            vendor: vendor,
            startAmt: startAmt,
            advance: advance,
            settlement: settlement,
            deposit: deposit,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
