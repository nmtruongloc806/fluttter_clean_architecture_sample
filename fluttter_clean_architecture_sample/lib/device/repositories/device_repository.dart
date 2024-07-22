import 'package:battery_plus/battery_plus.dart';

class DeviceRepository {
  final Battery _battery = Battery();

  Future<int> getBatteryLevel() async {
    return await _battery.batteryLevel;
  }
}
