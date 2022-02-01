// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrackingRecord> _$trackingRecordSerializer =
    new _$TrackingRecordSerializer();

class _$TrackingRecordSerializer
    implements StructuredSerializer<TrackingRecord> {
  @override
  final Iterable<Type> types = const [TrackingRecord, _$TrackingRecord];
  @override
  final String wireName = 'TrackingRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackingRecord object,
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
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  TrackingRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackingRecordBuilder();

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
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$TrackingRecord extends TrackingRecord {
  @override
  final String carPlateNO;
  @override
  final DateTime time;
  @override
  final LatLng location;
  @override
  final DocumentReference<Object> reference;

  factory _$TrackingRecord([void Function(TrackingRecordBuilder) updates]) =>
      (new TrackingRecordBuilder()..update(updates)).build();

  _$TrackingRecord._(
      {this.carPlateNO, this.time, this.location, this.reference})
      : super._();

  @override
  TrackingRecord rebuild(void Function(TrackingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackingRecordBuilder toBuilder() =>
      new TrackingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackingRecord &&
        carPlateNO == other.carPlateNO &&
        time == other.time &&
        location == other.location &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, carPlateNO.hashCode), time.hashCode), location.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackingRecord')
          ..add('carPlateNO', carPlateNO)
          ..add('time', time)
          ..add('location', location)
          ..add('reference', reference))
        .toString();
  }
}

class TrackingRecordBuilder
    implements Builder<TrackingRecord, TrackingRecordBuilder> {
  _$TrackingRecord _$v;

  String _carPlateNO;
  String get carPlateNO => _$this._carPlateNO;
  set carPlateNO(String carPlateNO) => _$this._carPlateNO = carPlateNO;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TrackingRecordBuilder() {
    TrackingRecord._initializeBuilder(this);
  }

  TrackingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carPlateNO = $v.carPlateNO;
      _time = $v.time;
      _location = $v.location;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackingRecord;
  }

  @override
  void update(void Function(TrackingRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackingRecord build() {
    final _$result = _$v ??
        new _$TrackingRecord._(
            carPlateNO: carPlateNO,
            time: time,
            location: location,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
