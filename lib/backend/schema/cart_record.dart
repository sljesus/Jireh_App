import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  DocumentReference? get creator;

  int? get itemCount;

  bool? get isActive;

  double? get amount;

  @BuiltValueField(wireName: 'selectedItems-List')
  BuiltList<DocumentReference>? get selectedItemsList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..itemCount = 0
    ..isActive = false
    ..amount = 0.0
    ..selectedItemsList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? creator,
  int? itemCount,
  bool? isActive,
  double? amount,
}) {
  final firestoreData = serializers.toFirestore(
    CartRecord.serializer,
    CartRecord(
      (c) => c
        ..creator = creator
        ..itemCount = itemCount
        ..isActive = isActive
        ..amount = amount
        ..selectedItemsList = null,
    ),
  );

  return firestoreData;
}
