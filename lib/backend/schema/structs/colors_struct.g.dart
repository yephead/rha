// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ColorsStruct> _$colorsStructSerializer =
    new _$ColorsStructSerializer();

class _$ColorsStructSerializer implements StructuredSerializer<ColorsStruct> {
  @override
  final Iterable<Type> types = const [ColorsStruct, _$ColorsStruct];
  @override
  final String wireName = 'ColorsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ColorsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.background;
    if (value != null) {
      result
        ..add('background')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.selectedtab;
    if (value != null) {
      result
        ..add('selectedtab')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.unselectedtab;
    if (value != null) {
      result
        ..add('unselectedtab')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.headerbackground;
    if (value != null) {
      result
        ..add('headerbackground')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.aboutTab;
    if (value != null) {
      result
        ..add('aboutTab')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookingsTab;
    if (value != null) {
      result
        ..add('bookingsTab')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ColorsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ColorsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'selectedtab':
          result.selectedtab = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'unselectedtab':
          result.unselectedtab = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'headerbackground':
          result.headerbackground = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'aboutTab':
          result.aboutTab = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bookingsTab':
          result.bookingsTab = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ColorsStruct extends ColorsStruct {
  @override
  final Color? background;
  @override
  final Color? selectedtab;
  @override
  final Color? unselectedtab;
  @override
  final Color? headerbackground;
  @override
  final String? aboutTab;
  @override
  final String? bookingsTab;
  @override
  final String? logo;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ColorsStruct([void Function(ColorsStructBuilder)? updates]) =>
      (new ColorsStructBuilder()..update(updates))._build();

  _$ColorsStruct._(
      {this.background,
      this.selectedtab,
      this.unselectedtab,
      this.headerbackground,
      this.aboutTab,
      this.bookingsTab,
      this.logo,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ColorsStruct', 'firestoreUtilData');
  }

  @override
  ColorsStruct rebuild(void Function(ColorsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColorsStructBuilder toBuilder() => new ColorsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColorsStruct &&
        background == other.background &&
        selectedtab == other.selectedtab &&
        unselectedtab == other.unselectedtab &&
        headerbackground == other.headerbackground &&
        aboutTab == other.aboutTab &&
        bookingsTab == other.bookingsTab &&
        logo == other.logo &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, background.hashCode),
                                selectedtab.hashCode),
                            unselectedtab.hashCode),
                        headerbackground.hashCode),
                    aboutTab.hashCode),
                bookingsTab.hashCode),
            logo.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ColorsStruct')
          ..add('background', background)
          ..add('selectedtab', selectedtab)
          ..add('unselectedtab', unselectedtab)
          ..add('headerbackground', headerbackground)
          ..add('aboutTab', aboutTab)
          ..add('bookingsTab', bookingsTab)
          ..add('logo', logo)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ColorsStructBuilder
    implements Builder<ColorsStruct, ColorsStructBuilder> {
  _$ColorsStruct? _$v;

  Color? _background;
  Color? get background => _$this._background;
  set background(Color? background) => _$this._background = background;

  Color? _selectedtab;
  Color? get selectedtab => _$this._selectedtab;
  set selectedtab(Color? selectedtab) => _$this._selectedtab = selectedtab;

  Color? _unselectedtab;
  Color? get unselectedtab => _$this._unselectedtab;
  set unselectedtab(Color? unselectedtab) =>
      _$this._unselectedtab = unselectedtab;

  Color? _headerbackground;
  Color? get headerbackground => _$this._headerbackground;
  set headerbackground(Color? headerbackground) =>
      _$this._headerbackground = headerbackground;

  String? _aboutTab;
  String? get aboutTab => _$this._aboutTab;
  set aboutTab(String? aboutTab) => _$this._aboutTab = aboutTab;

  String? _bookingsTab;
  String? get bookingsTab => _$this._bookingsTab;
  set bookingsTab(String? bookingsTab) => _$this._bookingsTab = bookingsTab;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ColorsStructBuilder() {
    ColorsStruct._initializeBuilder(this);
  }

  ColorsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _background = $v.background;
      _selectedtab = $v.selectedtab;
      _unselectedtab = $v.unselectedtab;
      _headerbackground = $v.headerbackground;
      _aboutTab = $v.aboutTab;
      _bookingsTab = $v.bookingsTab;
      _logo = $v.logo;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColorsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ColorsStruct;
  }

  @override
  void update(void Function(ColorsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ColorsStruct build() => _build();

  _$ColorsStruct _build() {
    final _$result = _$v ??
        new _$ColorsStruct._(
            background: background,
            selectedtab: selectedtab,
            unselectedtab: unselectedtab,
            headerbackground: headerbackground,
            aboutTab: aboutTab,
            bookingsTab: bookingsTab,
            logo: logo,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ColorsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
