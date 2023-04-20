// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'percent_prices_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PercentPricesRecord> _$percentPricesRecordSerializer =
    new _$PercentPricesRecordSerializer();

class _$PercentPricesRecordSerializer
    implements StructuredSerializer<PercentPricesRecord> {
  @override
  final Iterable<Type> types = const [
    PercentPricesRecord,
    _$PercentPricesRecord
  ];
  @override
  final String wireName = 'PercentPricesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PercentPricesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.priceName;
    if (value != null) {
      result
        ..add('price_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.percentValue;
    if (value != null) {
      result
        ..add('percent_value')
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
  PercentPricesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PercentPricesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price_Name':
          result.priceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'percent_value':
          result.percentValue = serializers.deserialize(value,
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

class _$PercentPricesRecord extends PercentPricesRecord {
  @override
  final String? priceName;
  @override
  final double? percentValue;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PercentPricesRecord(
          [void Function(PercentPricesRecordBuilder)? updates]) =>
      (new PercentPricesRecordBuilder()..update(updates))._build();

  _$PercentPricesRecord._({this.priceName, this.percentValue, this.ffRef})
      : super._();

  @override
  PercentPricesRecord rebuild(
          void Function(PercentPricesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PercentPricesRecordBuilder toBuilder() =>
      new PercentPricesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PercentPricesRecord &&
        priceName == other.priceName &&
        percentValue == other.percentValue &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, priceName.hashCode);
    _$hash = $jc(_$hash, percentValue.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PercentPricesRecord')
          ..add('priceName', priceName)
          ..add('percentValue', percentValue)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PercentPricesRecordBuilder
    implements Builder<PercentPricesRecord, PercentPricesRecordBuilder> {
  _$PercentPricesRecord? _$v;

  String? _priceName;
  String? get priceName => _$this._priceName;
  set priceName(String? priceName) => _$this._priceName = priceName;

  double? _percentValue;
  double? get percentValue => _$this._percentValue;
  set percentValue(double? percentValue) => _$this._percentValue = percentValue;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PercentPricesRecordBuilder() {
    PercentPricesRecord._initializeBuilder(this);
  }

  PercentPricesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _priceName = $v.priceName;
      _percentValue = $v.percentValue;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PercentPricesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PercentPricesRecord;
  }

  @override
  void update(void Function(PercentPricesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PercentPricesRecord build() => _build();

  _$PercentPricesRecord _build() {
    final _$result = _$v ??
        new _$PercentPricesRecord._(
            priceName: priceName, percentValue: percentValue, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
