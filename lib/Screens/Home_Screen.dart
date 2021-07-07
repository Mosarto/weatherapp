import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/Controll_Screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
                top: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Find Location',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xffE4E4EE),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Search for more location...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffBDBCE1),
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 24,
                    color: Color(0xffBDBCE1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Cities',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff2AC9B3),
                    Color(0xff29FF96),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1.5, 4.5),
                    blurRadius: 20.0,
                    spreadRadius: 1,
                    color: Color(0xff29FF96).withAlpha(150),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 30,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '06°',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w600,
                                fontSize: 38,
                                height: 0.8,
                              ),
                            ),
                            TextSpan(
                              text: '\nTokyo',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Image.asset(
                      'assets/weathers/spark-cloud@2x.png',
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffCA03DF),
                    Color(0xffFF7074),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1.5, 4.5),
                    blurRadius: 20.0,
                    spreadRadius: 1,
                    color: Color(0xffFF7074).withAlpha(150),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 30,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '19°',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w600,
                                fontSize: 38,
                                height: 0.8,
                              ),
                            ),
                            TextSpan(
                              text: '\nNew York',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Image.asset(
                      'assets/weathers/sun-wind@2x.png',
                      height: 120,
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ControllScreen(),
                  ),
                );
              },
              child: Container(
                height: 130,
                margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff467BFF),
                      Color(0xffC661FF),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1.5, 4.5),
                      blurRadius: 20.0,
                      spreadRadius: 1,
                      color: Color(0xffC661FF).withAlpha(150),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        left: 30,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '13°',
                                style: TextStyle(
                                  fontFamily: 'MohrRounded',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 38,
                                  height: 0.8,
                                ),
                              ),
                              TextSpan(
                                text: '\nLondon',
                                style: TextStyle(
                                  fontFamily: 'MohrRounded',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Image.asset(
                        'assets/weathers/rain-cloud-sun@2x.png',
                        height: 120,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
              height: 85,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xffE4E4EE),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(55),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(55),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF4F4F8),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 24,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Add City',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff171717),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
