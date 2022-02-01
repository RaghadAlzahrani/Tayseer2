// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fault_assesment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FaultAssesmentRecord> _$faultAssesmentRecordSerializer =
    new _$FaultAssesmentRecordSerializer();

class _$FaultAssesmentRecordSerializer
    implements StructuredSerializer<FaultAssesmentRecord> {
  @override
  final Iterable<Type> types = const [
    FaultAssesmentRecord,
    _$FaultAssesmentRecord
  ];
  @override
  final String wireName = 'FaultAssesmentRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FaultAssesmentRecord object,
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
    value = object.faultAssesment;
    if (value != null) {
      result
        ..add('fault_assesment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FaultAssesmentRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FaultAssesmentRecordBuilder();

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
        case 'fault_assesment':
          result.faultAssesment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$FaultAssesmentRecord extends FaultAssesmentRecord {
  @override
  final String carPlateNO;
  @override
  final String faultAssesment;
  @override
  final DocumentReference<Object> reference;

  factory _$FaultAssesmentRecord(
          [void Function(FaultAssesmentRecordBuilder) updates]) =>
      (new FaultAssesmentRecordBuilder()..update(updates)).build();

  _$FaultAssesmentRecord._(
      {this.carPlateNO, this.faultAssesment, this.reference})
      : super._();

  @override
  FaultAssesmentRecord rebuild(
          void Function(FaultAssesmentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaultAssesmentRecordBuilder toBuilder() =>
      new FaultAssesmentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaultAssesmentRecord &&
        carPlateNO == other.carPlateNO &&
        faultAssesment == other.faultAssesment &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, carPlateNO.hashCode), faultAssesment.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FaultAssesmentRecord')
          ..add('carPlateNO', carPlateNO)
          ..add('faultAssesment', faultAssesment)
          ..add('reference', reference))
        .toString();
  }
}

class FaultAssesmentRecordBuilder
    implements Builder<FaultAssesmentRecord, FaultAssesmentRecordBuilder> {
  _$FaultAssesmentRecord _$v;

  String _carPlateNO;
  String get carPlateNO => _$this._carPlateNO;
  set carPlateNO(String carPlateNO) => _$this._carPlateNO = carPlateNO;

  String _faultAssesment;
  String get faultAssesment => _$this._faultAssesment;
  set faultAssesment(String faultAssesment) =>
      _$this._faultAssesment = faultAssesment;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FaultAssesmentRecordBuilder() {
    FaultAssesmentRecord._initializeBuilder(this);
  }

  FaultAssesmentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carPlateNO = $v.carPlateNO;
      _faultAssesment = $v.faultAssesment;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaultAssesmentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FaultAssesmentRecord;
  }

  @override
  void update(void Function(FaultAssesmentRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FaultAssesmentRecord build() {
    final _$result = _$v ??
        new _$FaultAssesmentRecord._(
            carPlateNO: carPlateNO,
            faultAssesment: faultAssesment,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
