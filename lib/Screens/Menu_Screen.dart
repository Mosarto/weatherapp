import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/mais.svg',
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add City',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/config.svg',
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Setting',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/map.svg',
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Map',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
