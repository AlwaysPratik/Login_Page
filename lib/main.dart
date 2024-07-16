import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:login_page_01/main_app.dart';

void main() async {
  await _initHive();
  runApp(const MainApp());
}

Future<void> _initHive() async{
  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}