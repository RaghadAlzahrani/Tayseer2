import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tracking_record.g.dart';

abstract class TrackingRecord
    implements Built<TrackingRecord, TrackingRecordBuilder> {
  static Serializer<TrackingRecord> get serializer =>
      _$trackingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Car_plateNO')
  String get carPlateNO;

  @nullable
  @BuiltValueField(wireName: 'Time')
  DateTime get time;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TrackingRecordBuilder builder) =>
      builder..carPlateNO = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tracking');

  static Stream<TrackingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TrackingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TrackingRecord._();
  factory TrackingRecord([void Function(TrackingRecordBuilder) updates]) =
      _$TrackingRecord;

  static TrackingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTrackingRecordData({
  String carPlateNO,
  DateTime time,
  LatLng location,
}) =>
    serializers.toFirestore(
        TrackingRecord.serializer,
        TrackingRecord((t) => t
          ..carPlateNO = carPlateNO
          ..time = time
          ..location = location));
