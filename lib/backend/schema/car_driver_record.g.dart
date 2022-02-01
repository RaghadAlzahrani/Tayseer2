// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_driver_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarDriverRecord> _$carDriverRecordSerializer =
    new _$CarDriverRecordSerializer();

class _$CarDriverRecordSerializer
    implements StructuredSerializer<CarDriverRecord> {
  @override
  final Iterable<Type> types = const [CarDriverRecord, _$CarDriverRecord];
  @override
  final String wireName = 'CarDriverRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CarDriverRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.driverID;
    if (value != null) {
      result
        ..add('Driver_ID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('First_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('Last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.license;
    if (value != null) {
      result
        ..add('License')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('Password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('Phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insurance;
    if (value != null) {
      result
        ..add('insurance')
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
  CarDriverRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarDriverRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Driver_ID':
          result.driverID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'First_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'License':
          result.license = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'insurance':
          result.insurance = serializers.deserialize(value,
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

class _$CarDriverRecord extends CarDriverRecord {
  @override
  final DocumentReference<Object> driverID;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String license;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String insurance;
  @override
  final DocumentReference<Object> reference;

  factory _$CarDriverRecord([void Function(CarDriverRecordBuilder) updates]) =>
      (new CarDriverRecordBuilder()..update(updates)).build();

  _$CarDriverRecord._(
      {this.driverID,
      this.firstName,
      this.lastName,
      this.license,
      this.password,
      this.phone,
      this.email,
      this.insurance,
      this.reference})
      : super._();

  @override
  CarDriverRecord rebuild(void Function(CarDriverRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarDriverRecordBuilder toBuilder() =>
      new CarDriverRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarDriverRecord &&
        driverID == other.driverID &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        license == other.license &&
        password == other.password &&
        phone == other.phone &&
        email == other.email &&
        insurance == other.insurance &&
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
                            $jc(
                                $jc($jc(0, driverID.hashCode),
                                    firstName.hashCode),
                                lastName.hashCode),
                            license.hashCode),
                        password.hashCode),
                    phone.hashCode),
                email.hashCode),
            insurance.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CarDriverRecord')
          ..add('driverID', driverID)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('license', license)
          ..add('password', password)
          ..add('phone', phone)
          ..add('email', email)
          ..add('insurance', insurance)
          ..add('reference', reference))
        .toString();
  }
}

class CarDriverRecordBuilder
    implements Builder<CarDriverRecord, CarDriverRecordBuilder> {
  _$CarDriverRecord _$v;

  DocumentReference<Object> _driverID;
  DocumentReference<Object> get driverID => _$this._driverID;
  set driverID(DocumentReference<Object> driverID) =>
      _$this._driverID = driverID;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _license;
  String get license => _$this._license;
  set license(String license) => _$this._license = license;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _insurance;
  String get insurance => _$this._insurance;
  set insurance(String insurance) => _$this._insurance = insurance;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CarDriverRecordBuilder() {
    CarDriverRecord._initializeBuilder(this);
  }

  CarDriverRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _driverID = $v.driverID;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _license = $v.license;
      _password = $v.password;
      _phone = $v.phone;
      _email = $v.email;
      _insurance = $v.insurance;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarDriverRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarDriverRecord;
  }

  @override
  void update(void Function(CarDriverRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CarDriverRecord build() {
    final _$result = _$v ??
        new _$CarDriverRecord._(
            driverID: driverID,
            firstName: firstName,
            lastName: lastName,
            license: license,
            password: password,
            phone: phone,
            email: email,
            insurance: insurance,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
