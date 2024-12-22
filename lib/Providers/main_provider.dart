import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  bool isWIFIOn = false; // first btn
  bool isLightOn = false; // second
  bool isCamOn = false; // third
  bool isAlarmOn = false; // forth
  bool isGateOn = false; // fifth
  bool isGarageOn = false; // sixth
  bool isWetherOn = false; // seventh
  bool isOn = false; // Eighth

  void wifiToggle() {
    // TODO: Wifi on/off karana function eka methanata dapn
    isWIFIOn = !isWIFIOn;
    notifyListeners();
  }

  void lightToggle() {
    // TODO: light on/off function eka
    isLightOn = !isLightOn;
    notifyListeners();
  }

// TODO : Uda deke widiyata anith function tikath galapen widiyt dapm
  void camToggle() {
    isCamOn = !isCamOn;
    notifyListeners();
  }

  void alarmToggle() {
    isAlarmOn = !isAlarmOn;
    notifyListeners();
  }

  void gateToggle() {
    isGateOn = !isGateOn;
    notifyListeners();
  }

  void garageToggle() {
    isGarageOn = !isGarageOn;
    notifyListeners();
  }

  void xToggle() {
    isOn = !isOn;
    notifyListeners();
  }

  void wetherToggle() {
    isWetherOn = !isWetherOn;
    notifyListeners();
  }
}
