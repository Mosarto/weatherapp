import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherapp/Screens/Home_Screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'MohrRounded',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
