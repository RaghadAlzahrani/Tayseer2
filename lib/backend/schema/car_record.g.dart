// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarRecord> _$carRecordSerializer = new _$CarRecordSerializer();

class _$CarRecordSerializer implements StructuredSerializer<CarRecord> {
  @override
  final Iterable<Type> types = const [CarRecord, _$CarRecord];
  @override
  final String wireName = 'CarRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CarRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.carPlateNO;
    if (value != null) {
      result
        ..add('Car_plateNO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverId;
    if (value != null) {
      result
        ..add('Driver_Id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CarRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Car_plateNO':
          result.carPlateNO = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Driver_Id':
          result.driverId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CarRecord extends CarRecord {
  @override
  final String carPlateNO;
  @override
  final DocumentReference<Object> driverId;
  @override
  final DocumentReference<Object> reference;

  factory _$CarRecord([void Function(CarRecordBuilder) updates]) =>
      (new CarRecordBuilder()..update(updates)).build();

  _$CarRecord._({this.carPlateNO, this.driverId, this.reference}) : super._();

  @override
  CarRecord rebuild(void Function(CarRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarRecordBuilder toBuilder() => new CarRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarRecord &&
        carPlateNO == other.carPlateNO &&
        driverId == other.driverId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, carPlateNO.hashCode), driverId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CarRecord')
          ..add('carPlateNO', carPlateNO)
          ..add('driverId', driverId)
          ..add('reference', reference))
        .toString();
  }
}

class CarRecordBuilder implements Builder<CarRecord, CarRecordBuilder> {
  _$CarRecord _$v;

  String _carPlateNO;
  String get carPlateNO => _$this._carPlateNO;
  set carPlateNO(String carPlateNO) => _$this._carPlateNO = carPlateNO;

  DocumentReference<Object> _driverId;
  DocumentReference<Object> get driverId => _$this._driverId;
  set driverId(DocumentReference<Object> driverId) =>
      _$this._driverId = driverId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CarRecordBuilder() {
    CarRecord._initializeBuilder(this);
  }

  CarRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carPlateNO = $v.carPlateNO;
      _driverId = $v.driverId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarRecord;
  }

  @override
  void update(void Function(CarRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CarRecord build() {
    final _$result = _$v ??
        new _$CarRecord._(
            carPlateNO: carPlateNO, driverId: driverId, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
