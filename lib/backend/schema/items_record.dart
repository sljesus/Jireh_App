import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_record.g.dart';

abstract class ItemsRecord implements Built<ItemsRecord, ItemsRecordBuilder> {
  static Serializer<ItemsRecord> get serializer => _$itemsRecordSerializer;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  String? get image;

  BuiltList<String>? get listacategorias;

  double? get price;

  double? get precioCrema;

  double? get precioLitro;

  double? get precioMedio;

  bool? get choice1;

  bool? get choice2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..onSale = false
    ..salePrice = 0.0
    ..image = ''
    ..listacategorias = ListBuilder()
    ..price = 0.0
    ..precioCrema = 0.0
    ..precioLitro = 0.0
    ..precioMedio = 0.0
    ..choice1 = false
    ..choice2 = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItemsRecord._();
  factory ItemsRecord([void Function(ItemsRecordBuilder) updates]) =
      _$ItemsRecord;

  static ItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  String? image,
  double? price,
  double? precioCrema,
  double? precioLitro,
  double? precioMedio,
  bool? choice1,
  bool? choice2,
}) {
  final firestoreData = serializers.toFirestore(
    ItemsRecord.serializer,
    ItemsRecord(
      (i) => i
        ..name = name
        ..description = description
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..onSale = onSale
        ..salePrice = salePrice
        ..image = image
        ..listacategorias = null
        ..price = price
        ..precioCrema = precioCrema
        ..precioLitro = precioLitro
        ..precioMedio = precioMedio
        ..choice1 = choice1
        ..choice2 = choice2,
    ),
  );

  return firestoreData;
}
