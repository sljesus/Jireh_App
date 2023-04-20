// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.itemCount;
    if (value != null) {
      result
        ..add('itemCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.selectedItemsList;
    if (value != null) {
      result
        ..add('selectedItems-List')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  CartRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'itemCount':
          result.itemCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'selectedItems-List':
          result.selectedItemsList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$CartRecord extends CartRecord {
  @override
  final DocumentReference<Object?>? creator;
  @override
  final int? itemCount;
  @override
  final bool? isActive;
  @override
  final double? amount;
  @override
  final BuiltList<DocumentReference<Object?>>? selectedItemsList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CartRecord([void Function(CartRecordBuilder)? updates]) =>
      (new CartRecordBuilder()..update(updates))._build();

  _$CartRecord._(
      {this.creator,
      this.itemCount,
      this.isActive,
      this.amount,
      this.selectedItemsList,
      this.ffRef})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        creator == other.creator &&
        itemCount == other.itemCount &&
        isActive == other.isActive &&
        amount == other.amount &&
        selectedItemsList == other.selectedItemsList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, selectedItemsList.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartRecord')
          ..add('creator', creator)
          ..add('itemCount', itemCount)
          ..add('isActive', isActive)
          ..add('amount', amount)
          ..add('selectedItemsList', selectedItemsList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord? _$v;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  ListBuilder<DocumentReference<Object?>>? _selectedItemsList;
  ListBuilder<DocumentReference<Object?>> get selectedItemsList =>
      _$this._selectedItemsList ??=
          new ListBuilder<DocumentReference<Object?>>();
  set selectedItemsList(
          ListBuilder<DocumentReference<Object?>>? selectedItemsList) =>
      _$this._selectedItemsList = selectedItemsList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creator = $v.creator;
      _itemCount = $v.itemCount;
      _isActive = $v.isActive;
      _amount = $v.amount;
      _selectedItemsList = $v.selectedItemsList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartRecord build() => _build();

  _$CartRecord _build() {
    _$CartRecord _$result;
    try {
      _$result = _$v ??
          new _$CartRecord._(
              creator: creator,
              itemCount: itemCount,
              isActive: isActive,
              amount: amount,
              selectedItemsList: _selectedItemsList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedItemsList';
        _selectedItemsList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
