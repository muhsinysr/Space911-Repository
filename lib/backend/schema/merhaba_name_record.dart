import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'merhaba_name_record.g.dart';

abstract class MerhabaNameRecord
    implements Built<MerhabaNameRecord, MerhabaNameRecordBuilder> {
  static Serializer<MerhabaNameRecord> get serializer =>
      _$merhabaNameRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MerhabaNameRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merhaba_name');

  static Stream<MerhabaNameRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MerhabaNameRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MerhabaNameRecord._();
  factory MerhabaNameRecord([void Function(MerhabaNameRecordBuilder) updates]) =
      _$MerhabaNameRecord;

  static MerhabaNameRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMerhabaNameRecordData() => serializers.toFirestore(
    MerhabaNameRecord.serializer, MerhabaNameRecord((m) => m));
