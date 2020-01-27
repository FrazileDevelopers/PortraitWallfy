import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:portraitwallfy/constants/frazile.dart';
// import 'package:portraitwallfy/db/DBManager.dart';
import 'package:portraitwallfy/pages/config/configPage.dart';
import 'package:portraitwallfy/services/connectionStatus.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  ConnectionStatus connectionStatus = ConnectionStatus.getInstance();
  connectionStatus.initialize();
  // initilizeLocalDB();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // * Get Shared Preference Instance for whole app
  // Frazile.prefs = await SharedPreferences.getInstance();

  runApp(ConfigPage());
}

// initilizeLocalDB() async {
//   DBManager db = DBManager.internal();
//   await db.initDb();
// }
