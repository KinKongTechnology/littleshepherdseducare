import 'package:flutter/material.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  UserStruct _tempregisterdetail = UserStruct();
  UserStruct get tempregisterdetail => _tempregisterdetail;
  set tempregisterdetail(UserStruct value) {
    _tempregisterdetail = value;
  }

  void updateTempregisterdetailStruct(Function(UserStruct) updateFn) {
    updateFn(_tempregisterdetail);
  }

  String _commentiImage = '';
  String get commentiImage => _commentiImage;
  set commentiImage(String value) {
    _commentiImage = value;
  }

  String _paymentSlip = '';
  String get paymentSlip => _paymentSlip;
  set paymentSlip(String value) {
    _paymentSlip = value;
  }

  bool _deleteAccount = false;
  bool get deleteAccount => _deleteAccount;
  set deleteAccount(bool value) {
    _deleteAccount = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
