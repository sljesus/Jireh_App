import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'selected_items_record.g.dart';

abstract class SelectedItemsRecord
    implements Built<SelectedItemsRecord, SelectedItemsRecordBuilder> {
  static Serializer<SelectedItemsRecord> get serializer =>
      _$selectedItemsRecordSerializer;

  DocumentReference? get item;

  String? get name;

  String? get description;

  String? get image;

  double? get price;

  double? get subTotal;

  DocumentReference? get cart;

  DocumentReference? get creator;

  int? get cantidad;

  String? get instrucciones;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SelectedItemsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..image = ''
    ..price = 0.0
    ..subTotal = 0.0
    ..cantidad = 0
    ..instrucciones = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SelectedItemsRecord._();
  factory SelectedItemsRecord(
          [void Function(SelectedItemsRecordBuilder) updates]) =
      _$SelectedItemsRecord;

  static SelectedItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSelectedItemsRecordData({
  DocumentReference? item,
  String? name,
  String? description,
  String? image,
  double? price,
  double? subTotal,
  DocumentReference? cart,
  DocumentReference? creator,
  int? cantidad,
  String? instrucciones,
}) {
  final firestoreData = serializers.toFirestore(
    SelectedItemsRecord.serializer,
    SelectedItemsRecord(
      (s) => s
        ..item = item
        ..name = name
        ..description = description
        ..image = image
        ..price = price
        ..subTotal = subTotal
        ..cart = cart
        ..creator = creator
        ..cantidad = cantidad
        ..instrucciones = instrucciones,
    ),
  );

  return firestoreData;
}
