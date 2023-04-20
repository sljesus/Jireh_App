// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelectedItemsRecord> _$selectedItemsRecordSerializer =
    new _$SelectedItemsRecordSerializer();

class _$SelectedItemsRecordSerializer
    implements StructuredSerializer<SelectedItemsRecord> {
  @override
  final Iterable<Type> types = const [
    SelectedItemsRecord,
    _$SelectedItemsRecord
  ];
  @override
  final String wireName = 'SelectedItemsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SelectedItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.subTotal;
    if (value != null) {
      result
        ..add('subTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.instrucciones;
    if (value != null) {
      result
        ..add('instrucciones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SelectedItemsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectedItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'subTotal':
          result.subTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cart':
          result.cart = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'instrucciones':
          result.instrucciones = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$SelectedItemsRecord extends SelectedItemsRecord {
  @override
  final DocumentReference<Object?>? item;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final double? price;
  @override
  final double? subTotal;
  @override
  final DocumentReference<Object?>? cart;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final int? cantidad;
  @override
  final String? instrucciones;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SelectedItemsRecord(
          [void Function(SelectedItemsRecordBuilder)? updates]) =>
      (new SelectedItemsRecordBuilder()..update(updates))._build();

  _$SelectedItemsRecord._(
      {this.item,
      this.name,
      this.description,
      this.image,
      this.price,
      this.subTotal,
      this.cart,
      this.creator,
      this.cantidad,
      this.instrucciones,
      this.ffRef})
      : super._();

  @override
  SelectedItemsRecord rebuild(
          void Function(SelectedItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedItemsRecordBuilder toBuilder() =>
      new SelectedItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedItemsRecord &&
        item == other.item &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        price == other.price &&
        subTotal == other.subTotal &&
        cart == other.cart &&
        creator == other.creator &&
        cantidad == other.cantidad &&
        instrucciones == other.instrucciones &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jc(_$hash, cart.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, instrucciones.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectedItemsRecord')
          ..add('item', item)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('price', price)
          ..add('subTotal', subTotal)
          ..add('cart', cart)
          ..add('creator', creator)
          ..add('cantidad', cantidad)
          ..add('instrucciones', instrucciones)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SelectedItemsRecordBuilder
    implements Builder<SelectedItemsRecord, SelectedItemsRecordBuilder> {
  _$SelectedItemsRecord? _$v;

  DocumentReference<Object?>? _item;
  DocumentReference<Object?>? get item => _$this._item;
  set item(DocumentReference<Object?>? item) => _$this._item = item;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _subTotal;
  double? get subTotal => _$this._subTotal;
  set subTotal(double? subTotal) => _$this._subTotal = subTotal;

  DocumentReference<Object?>? _cart;
  DocumentReference<Object?>? get cart => _$this._cart;
  set cart(DocumentReference<Object?>? cart) => _$this._cart = cart;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  String? _instrucciones;
  String? get instrucciones => _$this._instrucciones;
  set instrucciones(String? instrucciones) =>
      _$this._instrucciones = instrucciones;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SelectedItemsRecordBuilder() {
    SelectedItemsRecord._initializeBuilder(this);
  }

  SelectedItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _price = $v.price;
      _subTotal = $v.subTotal;
      _cart = $v.cart;
      _creator = $v.creator;
      _cantidad = $v.cantidad;
      _instrucciones = $v.instrucciones;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedItemsRecord;
  }

  @override
  void update(void Function(SelectedItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectedItemsRecord build() => _build();

  _$SelectedItemsRecord _build() {
    final _$result = _$v ??
        new _$SelectedItemsRecord._(
            item: item,
            name: name,
            description: description,
            image: image,
            price: price,
            subTotal: subTotal,
            cart: cart,
            creator: creator,
            cantidad: cantidad,
            instrucciones: instrucciones,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
