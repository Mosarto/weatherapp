import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CityScreen extends StatefulWidget {
  final zoomDrawerController;
  CityScreen({
    this.zoomDrawerController,
  });
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  List<Color> cores = [
    Color(0xffC661FF),
    Color(0xff467BFF),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                widget.zoomDrawerController.toggle();
                print(widget.zoomDrawerController);
              },
              child: Container(
                height: 50,
                width: 50,
                child: Container(
                  height: 30,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 15,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'London',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 38,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 30,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                '19-02-2021',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 14,
                  color: Color(0xffBDBCE1),
                ),
              ),
            ),
            Container(
              height: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/weathers/rain-cloud-sun@2x.png',
                          height: 120,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Color(0xffE4E4EE),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '13°',
                                style: TextStyle(
                                  fontFamily: 'MohrRounded',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 68,
                                  height: 0.8,
                                  color: Color(0xff171717),
                                ),
                              ),
                              TextSpan(
                                text: '\nRainy Shower',
                                style: TextStyle(
                                  fontFamily: 'MohrRounded',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.8,
                                  color: Color(0xffBDBCE1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F8),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/ventos.svg',
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F8),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/nuvem.svg',
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F8),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/umidade.svg',
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 20,
                        width: 60,
                        child: Text(
                          '19km/h',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        child: Text(
                          '75%',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        child: Text(
                          '85%',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 160,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffE4E4EE),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(38),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(38),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '11:00am',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                            'assets/icons/chuvacomraio.svg',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '13°',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff467BFF),
                          Color(0xffC661FF),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.5, 0),
                          blurRadius: 30.0,
                          spreadRadius: 1,
                          color: Color(0xffE4E4EE).withAlpha(150),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(38),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(38),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '12:00am',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            'assets/weathers/rain-cloud-sun@2x.png',
                            height: 60,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '13°',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffE4E4EE),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(38),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(38),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '01:00am',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                            'assets/icons/nuvemcomsol.svg',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '13°',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffE4E4EE),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(38),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(38),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '02:00am',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                            'assets/icons/nuvem.svg',
                            color: Color(0xffBDBCE1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '13°',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 5),
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xffE4E4EE),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(38),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(38),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '03:00am',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset(
                            'assets/icons/sol.svg',
                            color: Color(0xffBDBCE1),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '13°',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 470,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffF4F4F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(55),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Next Days',
                      style: TextStyle(
                        color: Color(0xff171717),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Monday, Feb 20',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/nuvemcomsol.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/12°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Tuesday, Feb 21',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/nuvem.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/13°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Wednesday, Feb 22',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/sol.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/12°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Thursday, Feb 23',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/nuvemcomsol.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/12°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Friday, Feb 24',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/nuvem.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/12°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            'Saturday, Feb 25',
                            style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/icons/sol.svg',
                            color: Color(0xff83839D),
                          ),
                        ),
                        Text(
                          '14°/12°',
                          style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xffE4E4EE),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Comfort Level',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 180,
              child: Column(
                children: [
                  Center(
                    child: SleekCircularSlider(
                      min: 0,
                      max: 100,
                      initialValue: 72,
                      appearance: CircularSliderAppearance(
                        animationEnabled: false,
                        customWidths: CustomSliderWidths(
                          handlerSize: 0,
                          trackWidth: 12,
                          progressBarWidth: 12,
                        ),
                        size: 130,
                        customColors: CustomSliderColors(
                          progressBarColors: cores,
                          trackColor: Color(0xffF4F4F8),
                          dynamicGradient: true,
                          hideShadow: true,
                        ),
                        infoProperties: InfoProperties(
                            mainLabelStyle: TextStyle(
                              letterSpacing: 0.1,
                              height: 1.0,
                              fontSize: 27,
                              fontFamily: 'MohrRounded',
                            ),
                            bottomLabelText: ('Humidity'),
                            bottomLabelStyle: TextStyle(
                              letterSpacing: 0.1,
                              height: 1.4,
                              fontSize: 14,
                              fontFamily: 'MohrRounded',
                            )),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Feels Like',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xffBDBCE1),
                              ),
                            ),
                            TextSpan(
                              text: ' 10°',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xff171717),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        height: 25,
                        width: 1,
                        color: Color(0xffE4E4EE),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'UV Index',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xffBDBCE1),
                              ),
                            ),
                            TextSpan(
                              text: ' 0 low',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xff171717),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffE4E4EE),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Sunrise and sunset',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                    ),
                    child: Text(
                      '06:10',
                      style: TextStyle(
                        color: Color(0xff171717),
                        fontSize: 12,
                        height: 0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    height: 240,
                    child: Column(
                      children: [
                        Container(
                          height: 105,
                          child: Container(
                            height: 200,
                            width: 180,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: 22,
                                  child: Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: RDottedLineBorder.all(
                                        color: Color(0xffFCD038),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: -30,
                                  child: Container(
                                    height: 35,
                                    width: 200,
                                    child: Image.asset(
                                        'assets/weathers/Sun@2x.png'),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    child: SvgPicture.asset(
                                      'assets/icons/sunrise.svg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 85,
                                  child: Text(
                                    'sunrise',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xffBDBCE1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 230,
                          color: Color(0xff808080),
                        ),
                        Container(
                          height: 100,
                          child: Container(
                            height: 200,
                            width: 180,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  bottom: 6,
                                  child: Container(
                                    height: 180,
                                    width: 178,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Color(0xffE4E4EE),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 60,
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    child: SvgPicture.asset(
                                      'assets/icons/sunset.svg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 85,
                                  child: Text(
                                    'sunset',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xffBDBCE1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5,
                    ),
                    child: Text(
                      '18:45',
                      style: TextStyle(
                        color: Color(0xff171717),
                        fontSize: 12,
                        height: 0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffE4E4EE),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Wind',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 140,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      height: 60,
                      width: 60,
                      child: SvgPicture.asset(
                        'assets/icons/vento.svg',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Direction',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xffBDBCE1),
                              ),
                            ),
                            TextSpan(
                              text: ' North',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xff171717),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 35,
                          right: 35,
                        ),
                        height: 25,
                        width: 1,
                        color: Color(0xffE4E4EE),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Speed',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xffBDBCE1),
                              ),
                            ),
                            TextSpan(
                              text: ' 12km/h',
                              style: TextStyle(
                                fontFamily: 'MohrRounded',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 0.8,
                                color: Color(0xff171717),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
