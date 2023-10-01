import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
      _Classes = prefs.getStringList('ff_Classes') ?? _Classes;
    });
    _safeInit(() {
      _Category = prefs.getStringList('ff_Category') ?? _Category;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _StudentPhoto = '';
  String get StudentPhoto => _StudentPhoto;
  set StudentPhoto(String _value) {
    _StudentPhoto = _value;
  }

  List<String> _Classes = [
    'Standard 1',
    'Standard 2',
    'Standard 3',
    'Standard 4',
    'Standard 5',
    'Standard 6'
  ];
  List<String> get Classes => _Classes;
  set Classes(List<String> _value) {
    _Classes = _value;
    prefs.setStringList('ff_Classes', _value);
  }

  void addToClasses(String _value) {
    _Classes.add(_value);
    prefs.setStringList('ff_Classes', _Classes);
  }

  void removeFromClasses(String _value) {
    _Classes.remove(_value);
    prefs.setStringList('ff_Classes', _Classes);
  }

  void removeAtIndexFromClasses(int _index) {
    _Classes.removeAt(_index);
    prefs.setStringList('ff_Classes', _Classes);
  }

  void updateClassesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Classes[_index] = updateFn(_Classes[_index]);
    prefs.setStringList('ff_Classes', _Classes);
  }

  void insertAtIndexInClasses(int _index, String _value) {
    _Classes.insert(_index, _value);
    prefs.setStringList('ff_Classes', _Classes);
  }

  List<String> _Category = ['Day Care/Tuition', 'Tuition', 'One To One'];
  List<String> get Category => _Category;
  set Category(List<String> _value) {
    _Category = _value;
    prefs.setStringList('ff_Category', _value);
  }

  void addToCategory(String _value) {
    _Category.add(_value);
    prefs.setStringList('ff_Category', _Category);
  }

  void removeFromCategory(String _value) {
    _Category.remove(_value);
    prefs.setStringList('ff_Category', _Category);
  }

  void removeAtIndexFromCategory(int _index) {
    _Category.removeAt(_index);
    prefs.setStringList('ff_Category', _Category);
  }

  void updateCategoryAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Category[_index] = updateFn(_Category[_index]);
    prefs.setStringList('ff_Category', _Category);
  }

  void insertAtIndexInCategory(int _index, String _value) {
    _Category.insert(_index, _value);
    prefs.setStringList('ff_Category', _Category);
  }

  String _EditImage = '';
  String get EditImage => _EditImage;
  set EditImage(String _value) {
    _EditImage = _value;
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
