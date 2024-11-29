import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "items" field.
  List<CartItemStruct>? _items;
  List<CartItemStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "orderID" field.
  String? _orderID;
  String get orderID => _orderID ?? '';
  bool hasOrderID() => _orderID != null;

  // "cartSum" field.
  double? _cartSum;
  double get cartSum => _cartSum ?? 0.0;
  bool hasCartSum() => _cartSum != null;

  // "receiptImage" field.
  String? _receiptImage;
  String get receiptImage => _receiptImage ?? '';
  bool hasReceiptImage() => _receiptImage != null;

  // "receiptUrl" field.
  String? _receiptUrl;
  String get receiptUrl => _receiptUrl ?? '';
  bool hasReceiptUrl() => _receiptUrl != null;

  // "trackingNo" field.
  String? _trackingNo;
  String get trackingNo => _trackingNo ?? '';
  bool hasTrackingNo() => _trackingNo != null;

  // "shipmentType" field.
  String? _shipmentType;
  String get shipmentType => _shipmentType ?? '';
  bool hasShipmentType() => _shipmentType != null;

  // "custName" field.
  String? _custName;
  String get custName => _custName ?? '';
  bool hasCustName() => _custName != null;

  // "custPhoneNo" field.
  String? _custPhoneNo;
  String get custPhoneNo => _custPhoneNo ?? '';
  bool hasCustPhoneNo() => _custPhoneNo != null;

  // "custAddress" field.
  String? _custAddress;
  String get custAddress => _custAddress ?? '';
  bool hasCustAddress() => _custAddress != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "design" field.
  String? _design;
  String get design => _design ?? '';
  bool hasDesign() => _design != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _remarks = snapshotData['remarks'] as String?;
    _status = snapshotData['status'] as String?;
    _items = getStructList(
      snapshotData['items'],
      CartItemStruct.fromMap,
    );
    _orderID = snapshotData['orderID'] as String?;
    _cartSum = castToType<double>(snapshotData['cartSum']);
    _receiptImage = snapshotData['receiptImage'] as String?;
    _receiptUrl = snapshotData['receiptUrl'] as String?;
    _trackingNo = snapshotData['trackingNo'] as String?;
    _shipmentType = snapshotData['shipmentType'] as String?;
    _custName = snapshotData['custName'] as String?;
    _custPhoneNo = snapshotData['custPhoneNo'] as String?;
    _custAddress = snapshotData['custAddress'] as String?;
    _code = snapshotData['code'] as String?;
    _design = snapshotData['design'] as String?;
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? quantity,
  String? remarks,
  String? status,
  String? orderID,
  double? cartSum,
  String? receiptImage,
  String? receiptUrl,
  String? trackingNo,
  String? shipmentType,
  String? custName,
  String? custPhoneNo,
  String? custAddress,
  String? code,
  String? design,
  double? totalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'quantity': quantity,
      'remarks': remarks,
      'status': status,
      'orderID': orderID,
      'cartSum': cartSum,
      'receiptImage': receiptImage,
      'receiptUrl': receiptUrl,
      'trackingNo': trackingNo,
      'shipmentType': shipmentType,
      'custName': custName,
      'custPhoneNo': custPhoneNo,
      'custAddress': custAddress,
      'code': code,
      'design': design,
      'totalPrice': totalPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.quantity == e2?.quantity &&
        e1?.remarks == e2?.remarks &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.orderID == e2?.orderID &&
        e1?.cartSum == e2?.cartSum &&
        e1?.receiptImage == e2?.receiptImage &&
        e1?.receiptUrl == e2?.receiptUrl &&
        e1?.trackingNo == e2?.trackingNo &&
        e1?.shipmentType == e2?.shipmentType &&
        e1?.custName == e2?.custName &&
        e1?.custPhoneNo == e2?.custPhoneNo &&
        e1?.custAddress == e2?.custAddress &&
        e1?.code == e2?.code &&
        e1?.design == e2?.design &&
        e1?.totalPrice == e2?.totalPrice;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.quantity,
        e?.remarks,
        e?.status,
        e?.items,
        e?.orderID,
        e?.cartSum,
        e?.receiptImage,
        e?.receiptUrl,
        e?.trackingNo,
        e?.shipmentType,
        e?.custName,
        e?.custPhoneNo,
        e?.custAddress,
        e?.code,
        e?.design,
        e?.totalPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
