import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:weatherapp/Screens/City_Screen.dart';
import 'package:weatherapp/Screens/Menu_Screen.dart';

class ControllScreen extends StatefulWidget {
  @override
  _ControllScreenState createState() => _ControllScreenState();
}

class _ControllScreenState extends State<ControllScreen> {
  final draweController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: draweController,
        style: DrawerStyle.Style1,
        menuScreen: MenuScreen(),
        mainScreen: CityScreen(
          zoomDrawerController: draweController,
        ),
        borderRadius: 24.0,
        disableGesture: true,
        showShadow: true,
        angle: 9.0,
        backgroundColor: Colors.black12,
        slideWidth: MediaQuery.of(context).size.width * .55,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
