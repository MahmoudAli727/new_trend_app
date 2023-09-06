import 'package:flutter/material.dart';
import 'package:new_trend_app/Screens/HomePage.dart';
import 'package:new_trend_app/Screens/Updatepage.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage().id: (context) => HomePage(),
        UpdatePage.id: (context) => UpdatePage(),
      },
      initialRoute: HomePage().id,
    );
  }
}
