import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'accident_record.g.dart';

abstract class AccidentRecord
    implements Built<AccidentRecord, AccidentRecordBuilder> {
  static Serializer<AccidentRecord> get serializer =>
      _$accidentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Fault_assesment')
  DocumentReference get faultAssesment;

  @nullable
  @BuiltValueField(wireName: 'Accident_ID')
  String get accidentID;

  @nullable
  @BuiltValueField(wireName: 'Accident_image')
  String get accidentImage;

  @nullable
  @BuiltValueField(wireName: 'Car_involved')
  DocumentReference get carInvolved;

  @nullable
  @BuiltValueField(wireName: 'Date_time')
  DateTime get dateTime;

  @nullable
  @BuiltValueField(wireName: 'Location')
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'Status')
  String get status;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AccidentRecordBuilder builder) => builder
    ..accidentID = ''
    ..accidentImage = ''
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Accident');

  static Stream<AccidentRecord?> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AccidentRecord?> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AccidentRecord._();
  factory AccidentRecord([void Function(AccidentRecordBuilder) updates]) =
      _$AccidentRecord;

  static AccidentRecord? getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAccidentRecordData({
  required DocumentReference<Object> faultAssesment,
  required String accidentID,
  required String accidentImage,
  required DocumentReference<Object> carInvolved,
  required DateTime dateTime,
  required LatLng location,
  required String status,
}) =>
    serializers.toFirestore(
        AccidentRecord.serializer,
        AccidentRecord((a) => a
          ..faultAssesment = faultAssesment
          ..accidentID = accidentID
          ..accidentImage = accidentImage
          ..carInvolved = carInvolved
          ..dateTime = dateTime
          ..location = location
          ..status = status));
