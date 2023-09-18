import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/home_pages.dart';
import 'package:trilhaapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const MyApp({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      debugShowCheckedModeBanner: false, //modo debug
      theme: ThemeData(primarySwatch: Colors.green), //cor
      home: const LoginPage(),
    );
  }
}
