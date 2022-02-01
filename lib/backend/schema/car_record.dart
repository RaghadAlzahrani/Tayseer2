import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'car_record.g.dart';

abstract class CarRecord implements Built<CarRecord, CarRecordBuilder> {
  static Serializer<CarRecord> get serializer => _$carRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Car_plateNO')
  String get carPlateNO;

  @nullable
  @BuiltValueField(wireName: 'Driver_Id')
  DocumentReference get driverId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarRecordBuilder builder) =>
      builder..carPlateNO = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Car');

  static Stream<CarRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CarRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CarRecord._();
  factory CarRecord([void Function(CarRecordBuilder) updates]) = _$CarRecord;

  static CarRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarRecordData({
  String carPlateNO,
  DocumentReference driverId,
}) =>
    serializers.toFirestore(
        CarRecord.serializer,
        CarRecord((c) => c
          ..carPlateNO = carPlateNO
          ..driverId = driverId));
