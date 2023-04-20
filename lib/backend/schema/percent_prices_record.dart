import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'percent_prices_record.g.dart';

abstract class PercentPricesRecord
    implements Built<PercentPricesRecord, PercentPricesRecordBuilder> {
  static Serializer<PercentPricesRecord> get serializer =>
      _$percentPricesRecordSerializer;

  @BuiltValueField(wireName: 'price_Name')
  String? get priceName;

  @BuiltValueField(wireName: 'percent_value')
  double? get percentValue;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PercentPricesRecordBuilder builder) => builder
    ..priceName = ''
    ..percentValue = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('percent_prices');

  static Stream<PercentPricesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PercentPricesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PercentPricesRecord._();
  factory PercentPricesRecord(
          [void Function(PercentPricesRecordBuilder) updates]) =
      _$PercentPricesRecord;

  static PercentPricesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPercentPricesRecordData({
  String? priceName,
  double? percentValue,
}) {
  final firestoreData = serializers.toFirestore(
    PercentPricesRecord.serializer,
    PercentPricesRecord(
      (p) => p
        ..priceName = priceName
        ..percentValue = percentValue,
    ),
  );

  return firestoreData;
}
