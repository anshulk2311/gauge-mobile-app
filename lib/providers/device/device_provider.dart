import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:wifi_scan/wifi_scan.dart';

enum FindingDeviceState { finding, retry }

enum WifiListState { empty, filled }

@injectable
class DeviceProvider extends ChangeNotifier {
  int retryTaps = 0;
  FindingDeviceState findingDeviceState = FindingDeviceState.finding;
  WifiListState wifiListState = WifiListState.empty;

  List<WiFiAccessPoint> accessPoints = <WiFiAccessPoint>[];
  StreamSubscription<List<WiFiAccessPoint>>? subscription;

  changeStateForRetryLimit(int retryTapped) {
    if (retryTapped >= 2) {
      findingDeviceState = FindingDeviceState.retry;
      notifyListeners();
    } else {
      findingDeviceState = FindingDeviceState.finding;
      startScan();
      notifyListeners();
    }
  }

  changeStateToFinding() {
    findingDeviceState = FindingDeviceState.finding;
    notifyListeners();
  }

  Future<void> startScan() async {
    wifiListState = WifiListState.empty;
    notifyListeners();
    // check if "can" startScan
    // check if can-startScan
    final can = await WiFiScan.instance.canStartScan();
    // if can-not, then show error
    if (can != CanStartScan.yes) {
      return;
    }

    // call startScan API
    // reset access points.
    accessPoints = <WiFiAccessPoint>[];
    final results = await WiFiScan.instance.getScannedResults();
    accessPoints = results;
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {},
    );
    wifiListState = WifiListState.filled;
    notifyListeners();
  }
}
