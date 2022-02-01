// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accident_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccidentRecord> _$accidentRecordSerializer =
    new _$AccidentRecordSerializer();

class _$AccidentRecordSerializer
    implements StructuredSerializer<AccidentRecord> {
  @override
  final Iterable<Type> types = const [AccidentRecord, _$AccidentRecord];
  @override
  final String wireName = 'AccidentRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AccidentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.faultAssesment;
    if (value != null) {
      result
        ..add('Fault_assesment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.accidentID;
    if (value != null) {
      result
        ..add('Accident_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accidentImage;
    if (value != null) {
      result
        ..add('Accident_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carInvolved;
    if (value != null) {
      result
        ..add('Car_involved')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('Date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
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
  AccidentRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccidentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Fault_assesment':
          result.faultAssesment = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Accident_ID':
          result.accidentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Accident_image':
          result.accidentImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Car_involved':
          result.carInvolved = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Date_time':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
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

class _$AccidentRecord extends AccidentRecord {
  @override
  final DocumentReference<Object> faultAssesment;
  @override
  final String accidentID;
  @override
  final String accidentImage;
  @override
  final DocumentReference<Object> carInvolved;
  @override
  final DateTime dateTime;
  @override
  final LatLng location;
  @override
  final String status;
  @override
  final DocumentReference<Object> reference;

  factory _$AccidentRecord([void Function(AccidentRecordBuilder) updates]) =>
      (new AccidentRecordBuilder()..update(updates)).build();

  _$AccidentRecord._(
      {this.faultAssesment,
      this.accidentID,
      this.accidentImage,
      this.carInvolved,
      this.dateTime,
      this.location,
      this.status,
      this.reference})
      : super._();

  @override
  AccidentRecord rebuild(void Function(AccidentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccidentRecordBuilder toBuilder() =>
      new AccidentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccidentRecord &&
        faultAssesment == other.faultAssesment &&
        accidentID == other.accidentID &&
        accidentImage == other.accidentImage &&
        carInvolved == other.carInvolved &&
        dateTime == other.dateTime &&
        location == other.location &&
        status == other.status &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, faultAssesment.hashCode),
                                accidentID.hashCode),
                            accidentImage.hashCode),
                        carInvolved.hashCode),
                    dateTime.hashCode),
                location.hashCode),
            status.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccidentRecord')
          ..add('faultAssesment', faultAssesment)
          ..add('accidentID', accidentID)
          ..add('accidentImage', accidentImage)
          ..add('carInvolved', carInvolved)
          ..add('dateTime', dateTime)
          ..add('location', location)
          ..add('status', status)
          ..add('reference', reference))
        .toString();
  }
}

class AccidentRecordBuilder
    implements Builder<AccidentRecord, AccidentRecordBuilder> {
  _$AccidentRecord _$v;

  DocumentReference<Object> _faultAssesment;
  DocumentReference<Object> get faultAssesment => _$this._faultAssesment;
  set faultAssesment(DocumentReference<Object> faultAssesment) =>
      _$this._faultAssesment = faultAssesment;

  String _accidentID;
  String get accidentID => _$this._accidentID;
  set accidentID(String accidentID) => _$this._accidentID = accidentID;

  String _accidentImage;
  String get accidentImage => _$this._accidentImage;
  set accidentImage(String accidentImage) =>
      _$this._accidentImage = accidentImage;

  DocumentReference<Object> _carInvolved;
  DocumentReference<Object> get carInvolved => _$this._carInvolved;
  set carInvolved(DocumentReference<Object> carInvolved) =>
      _$this._carInvolved = carInvolved;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AccidentRecordBuilder() {
    AccidentRecord._initializeBuilder(this);
  }

  AccidentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _faultAssesment = $v.faultAssesment;
      _accidentID = $v.accidentID;
      _accidentImage = $v.accidentImage;
      _carInvolved = $v.carInvolved;
      _dateTime = $v.dateTime;
      _location = $v.location;
      _status = $v.status;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccidentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccidentRecord;
  }

  @override
  void update(void Function(AccidentRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccidentRecord build() {
    final _$result = _$v ??
        new _$AccidentRecord._(
            faultAssesment: faultAssesment,
            accidentID: accidentID,
            accidentImage: accidentImage,
            carInvolved: carInvolved,
            dateTime: dateTime,
            location: location,
            status: status,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
