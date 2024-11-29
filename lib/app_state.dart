import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cart = prefs
              .getStringList('ff_cart')
              ?.map((x) {
                try {
                  return CartItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cart;
    });
    _safeInit(() {
      _cartSum = prefs.getDouble('ff_cartSum') ?? _cartSum;
    });
    _safeInit(() {
      _itemName = prefs.getString('ff_itemName') ?? _itemName;
    });
    _safeInit(() {
      _itemCode = prefs.getString('ff_itemCode') ?? _itemCode;
    });
    _safeInit(() {
      _shipmentType = prefs.getString('ff_shipmentType') ?? _shipmentType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CartItemStruct> _cart = [];
  List<CartItemStruct> get cart => _cart;
  set cart(List<CartItemStruct> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.serialize()).toList());
  }

  void addToCart(CartItemStruct value) {
    cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeFromCart(CartItemStruct value) {
    cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void updateCartAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCart(int index, CartItemStruct value) {
    cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
    prefs.setDouble('ff_cartSum', value);
  }

  String _itemName = '';
  String get itemName => _itemName;
  set itemName(String value) {
    _itemName = value;
    prefs.setString('ff_itemName', value);
  }

  String _itemCode = '';
  String get itemCode => _itemCode;
  set itemCode(String value) {
    _itemCode = value;
    prefs.setString('ff_itemCode', value);
  }

  String _shipmentType = '';
  String get shipmentType => _shipmentType;
  set shipmentType(String value) {
    _shipmentType = value;
    prefs.setString('ff_shipmentType', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
