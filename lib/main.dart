import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/first.dart';
// import 'package:flutter_getx/pages/home_bottomnav.dart';
// import 'package:flutter_getx/pages/home_kiosk.dart';
import 'package:flutter_getx/pages/home_route.dart';
import 'package:flutter_getx/pages/second.dart';
// import 'package:flutter_getx/pages/home_counter.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home', 
          page: () => const HomeRoute()
        ),
        GetPage(
          name: '/first', 
          page: () => const FirstPage()
        ),
         GetPage(
          name: '/second', 
          page: () => const SecondPage()
        ),
      ],
    );
  }
}