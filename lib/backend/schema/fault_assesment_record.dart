import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fault_assesment_record.g.dart';

abstract class FaultAssesmentRecord
    implements Built<FaultAssesmentRecord, FaultAssesmentRecordBuilder> {
  static Serializer<FaultAssesmentRecord> get serializer =>
      _$faultAssesmentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Car_plateNO')
  String get carPlateNO;

  @nullable
  @BuiltValueField(wireName: 'fault_assesment')
  String get faultAssesment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FaultAssesmentRecordBuilder builder) => builder
    ..carPlateNO = ''
    ..faultAssesment = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fault_assesment');

  static Stream<FaultAssesmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FaultAssesmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  FaultAssesmentRecord._();
  factory FaultAssesmentRecord(
          [void Function(FaultAssesmentRecordBuilder) updates]) =
      _$FaultAssesmentRecord;

  static FaultAssesmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFaultAssesmentRecordData({
  required String carPlateNO,
  required String faultAssesment,
}) =>
    serializers.toFirestore(
        FaultAssesmentRecord.serializer,
        FaultAssesmentRecord((f) => f
          ..carPlateNO = carPlateNO
          ..faultAssesment = faultAssesment));
