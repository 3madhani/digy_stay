import 'package:flutter/material.dart';

class LightAcControlViewModel extends ChangeNotifier {
  bool _isPowerOn = true;
  double _sliderValue = 50;

  bool get isPowerOn => _isPowerOn;
  double get sliderValue => _sliderValue;

  void changeSlider(dynamic val) {
    if (val is double) {
      _sliderValue = val;
      notifyListeners();
    }
  }

  void togglePower(bool val) {
    _isPowerOn = val;
    notifyListeners();
  }
}
