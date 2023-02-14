import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'colors_struct.g.dart';

abstract class ColorsStruct
    implements Built<ColorsStruct, ColorsStructBuilder> {
  static Serializer<ColorsStruct> get serializer => _$colorsStructSerializer;

  Color? get background;

  Color? get selectedtab;

  Color? get unselectedtab;

  Color? get headerbackground;

  String? get aboutTab;

  String? get bookingsTab;

  String? get logo;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ColorsStructBuilder builder) => builder
    ..aboutTab = ''
    ..bookingsTab = ''
    ..logo = ''
    ..firestoreUtilData = FirestoreUtilData();

  ColorsStruct._();
  factory ColorsStruct([void Function(ColorsStructBuilder) updates]) =
      _$ColorsStruct;
}

ColorsStruct createColorsStruct({
  Color? background,
  Color? selectedtab,
  Color? unselectedtab,
  Color? headerbackground,
  String? aboutTab,
  String? bookingsTab,
  String? logo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ColorsStruct(
      (c) => c
        ..background = background
        ..selectedtab = selectedtab
        ..unselectedtab = unselectedtab
        ..headerbackground = headerbackground
        ..aboutTab = aboutTab
        ..bookingsTab = bookingsTab
        ..logo = logo
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ColorsStruct? updateColorsStruct(
  ColorsStruct? colors, {
  bool clearUnsetFields = true,
}) =>
    colors != null
        ? (colors.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addColorsStructData(
  Map<String, dynamic> firestoreData,
  ColorsStruct? colors,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (colors == null) {
    return;
  }
  if (colors.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && colors.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final colorsData = getColorsFirestoreData(colors, forFieldValue);
  final nestedData = colorsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = colors.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getColorsFirestoreData(
  ColorsStruct? colors, [
  bool forFieldValue = false,
]) {
  if (colors == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ColorsStruct.serializer, colors);

  // Add any Firestore field values
  colors.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getColorsListFirestoreData(
  List<ColorsStruct>? colorss,
) =>
    colorss?.map((c) => getColorsFirestoreData(c, true)).toList() ?? [];
