import 'package:package_info/package_info.dart';

import 'package:logging/logging.dart';

class CyanConfig{
  static PackageInfo packageInfo;
  static var domain = 'cyanimg.app';
  static var cyanApiBaseUrl = 'https://$domain/api';
  static var debug = false;
  static var loggerLevel = Level.INFO;
  static var isLogAction = false;
  static var isLogApi = false;
  static var isMockApi = false;
}
