import 'package:aplikasi_loginpage_inisiated/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // mencegah error
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

/**
 * pada line ke 7 berfungsi agar tampilan pada app pada saat di leadscape tidak akan berubah, namun
 * akan tetap potrait/ tegak
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // untuk menghilangkan label debug
      home: MainPage(),
    );
  }
}
