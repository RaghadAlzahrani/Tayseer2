import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'car_driver_record.g.dart';

abstract class CarDriverRecord
    implements Built<CarDriverRecord, CarDriverRecordBuilder> {
  static Serializer<CarDriverRecord> get serializer =>
      _$carDriverRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Driver_ID')
  DocumentReference get driverID;

  @nullable
  @BuiltValueField(wireName: 'First_name')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'Last_name')
  String get lastName;

  @nullable
  @BuiltValueField(wireName: 'License')
  String get license;

  @nullable
  @BuiltValueField(wireName: 'Password')
  String get password;

  @nullable
  @BuiltValueField(wireName: 'Phone')
  String get phone;

  @nullable
  String get email;

  @nullable
  String get insurance;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarDriverRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..license = ''
    ..password = ''
    ..phone = ''
    ..email = ''
    ..insurance = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Car_driver');

  static Stream<CarDriverRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CarDriverRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CarDriverRecord._();
  factory CarDriverRecord([void Function(CarDriverRecordBuilder) updates]) =
      _$CarDriverRecord;

  static CarDriverRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarDriverRecordData({
  DocumentReference driverID,
  String firstName,
  String lastName,
  String license,
  String password,
  String phone,
  String email,
  String insurance,
}) =>
    serializers.toFirestore(
        CarDriverRecord.serializer,
        CarDriverRecord((c) => c
          ..driverID = driverID
          ..firstName = firstName
          ..lastName = lastName
          ..license = license
          ..password = password
          ..phone = phone
          ..email = email
          ..insurance = insurance));
