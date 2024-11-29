import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateRecord extends FirestoreRecord {
  TemplateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "option" field.
  List<String>? _option;
  List<String> get option => _option ?? const [];
  bool hasOption() => _option != null;

  // "size" field.
  List<String>? _size;
  List<String> get size => _size ?? const [];
  bool hasSize() => _size != null;

  // "design" field.
  List<String>? _design;
  List<String> get design => _design ?? const [];
  bool hasDesign() => _design != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _description = snapshotData['description'] as String?;
    _name = snapshotData['name'] as String?;
    _unit = snapshotData['unit'] as String?;
    _option = getDataList(snapshotData['option']);
    _size = getDataList(snapshotData['size']);
    _design = getDataList(snapshotData['design']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('template')
          : FirebaseFirestore.instance.collectionGroup('template');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('template').doc(id);

  static Stream<TemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateRecord.fromSnapshot(s));

  static Future<TemplateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplateRecord.fromSnapshot(s));

  static TemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateRecordData({
  String? code,
  String? image,
  double? price,
  String? description,
  String? name,
  String? unit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'image': image,
      'price': price,
      'description': description,
      'name': name,
      'unit': unit,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateRecordDocumentEquality implements Equality<TemplateRecord> {
  const TemplateRecordDocumentEquality();

  @override
  bool equals(TemplateRecord? e1, TemplateRecord? e2) {
    const listEquality = ListEquality();
    return e1?.code == e2?.code &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.name == e2?.name &&
        e1?.unit == e2?.unit &&
        listEquality.equals(e1?.option, e2?.option) &&
        listEquality.equals(e1?.size, e2?.size) &&
        listEquality.equals(e1?.design, e2?.design);
  }

  @override
  int hash(TemplateRecord? e) => const ListEquality().hash([
        e?.code,
        e?.image,
        e?.price,
        e?.description,
        e?.name,
        e?.unit,
        e?.option,
        e?.size,
        e?.design
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplateRecord;
}
