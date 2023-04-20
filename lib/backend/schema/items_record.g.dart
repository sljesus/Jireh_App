// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsRecord> _$itemsRecordSerializer = new _$ItemsRecordSerializer();

class _$ItemsRecordSerializer implements StructuredSerializer<ItemsRecord> {
  @override
  final Iterable<Type> types = const [ItemsRecord, _$ItemsRecord];
  @override
  final String wireName = 'ItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('on_sale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listacategorias;
    if (value != null) {
      result
        ..add('listacategorias')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioCrema;
    if (value != null) {
      result
        ..add('precioCrema')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioLitro;
    if (value != null) {
      result
        ..add('precioLitro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioMedio;
    if (value != null) {
      result
        ..add('precioMedio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.choice1;
    if (value != null) {
      result
        ..add('choice1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.choice2;
    if (value != null) {
      result
        ..add('choice2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  ItemsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'on_sale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listacategorias':
          result.listacategorias.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precioCrema':
          result.precioCrema = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precioLitro':
          result.precioLitro = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precioMedio':
          result.precioMedio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'choice1':
          result.choice1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'choice2':
          result.choice2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$ItemsRecord extends ItemsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? onSale;
  @override
  final double? salePrice;
  @override
  final String? image;
  @override
  final BuiltList<String>? listacategorias;
  @override
  final double? price;
  @override
  final double? precioCrema;
  @override
  final double? precioLitro;
  @override
  final double? precioMedio;
  @override
  final bool? choice1;
  @override
  final bool? choice2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemsRecord([void Function(ItemsRecordBuilder)? updates]) =>
      (new ItemsRecordBuilder()..update(updates))._build();

  _$ItemsRecord._(
      {this.name,
      this.description,
      this.createdAt,
      this.modifiedAt,
      this.onSale,
      this.salePrice,
      this.image,
      this.listacategorias,
      this.price,
      this.precioCrema,
      this.precioLitro,
      this.precioMedio,
      this.choice1,
      this.choice2,
      this.ffRef})
      : super._();

  @override
  ItemsRecord rebuild(void Function(ItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRecordBuilder toBuilder() => new ItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRecord &&
        name == other.name &&
        description == other.description &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        onSale == other.onSale &&
        salePrice == other.salePrice &&
        image == other.image &&
        listacategorias == other.listacategorias &&
        price == other.price &&
        precioCrema == other.precioCrema &&
        precioLitro == other.precioLitro &&
        precioMedio == other.precioMedio &&
        choice1 == other.choice1 &&
        choice2 == other.choice2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, onSale.hashCode);
    _$hash = $jc(_$hash, salePrice.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, listacategorias.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, precioCrema.hashCode);
    _$hash = $jc(_$hash, precioLitro.hashCode);
    _$hash = $jc(_$hash, precioMedio.hashCode);
    _$hash = $jc(_$hash, choice1.hashCode);
    _$hash = $jc(_$hash, choice2.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('onSale', onSale)
          ..add('salePrice', salePrice)
          ..add('image', image)
          ..add('listacategorias', listacategorias)
          ..add('price', price)
          ..add('precioCrema', precioCrema)
          ..add('precioLitro', precioLitro)
          ..add('precioMedio', precioMedio)
          ..add('choice1', choice1)
          ..add('choice2', choice2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemsRecordBuilder implements Builder<ItemsRecord, ItemsRecordBuilder> {
  _$ItemsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<String>? _listacategorias;
  ListBuilder<String> get listacategorias =>
      _$this._listacategorias ??= new ListBuilder<String>();
  set listacategorias(ListBuilder<String>? listacategorias) =>
      _$this._listacategorias = listacategorias;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _precioCrema;
  double? get precioCrema => _$this._precioCrema;
  set precioCrema(double? precioCrema) => _$this._precioCrema = precioCrema;

  double? _precioLitro;
  double? get precioLitro => _$this._precioLitro;
  set precioLitro(double? precioLitro) => _$this._precioLitro = precioLitro;

  double? _precioMedio;
  double? get precioMedio => _$this._precioMedio;
  set precioMedio(double? precioMedio) => _$this._precioMedio = precioMedio;

  bool? _choice1;
  bool? get choice1 => _$this._choice1;
  set choice1(bool? choice1) => _$this._choice1 = choice1;

  bool? _choice2;
  bool? get choice2 => _$this._choice2;
  set choice2(bool? choice2) => _$this._choice2 = choice2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemsRecordBuilder() {
    ItemsRecord._initializeBuilder(this);
  }

  ItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _onSale = $v.onSale;
      _salePrice = $v.salePrice;
      _image = $v.image;
      _listacategorias = $v.listacategorias?.toBuilder();
      _price = $v.price;
      _precioCrema = $v.precioCrema;
      _precioLitro = $v.precioLitro;
      _precioMedio = $v.precioMedio;
      _choice1 = $v.choice1;
      _choice2 = $v.choice2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsRecord;
  }

  @override
  void update(void Function(ItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsRecord build() => _build();

  _$ItemsRecord _build() {
    _$ItemsRecord _$result;
    try {
      _$result = _$v ??
          new _$ItemsRecord._(
              name: name,
              description: description,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              onSale: onSale,
              salePrice: salePrice,
              image: image,
              listacategorias: _listacategorias?.build(),
              price: price,
              precioCrema: precioCrema,
              precioLitro: precioLitro,
              precioMedio: precioMedio,
              choice1: choice1,
              choice2: choice2,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listacategorias';
        _listacategorias?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
