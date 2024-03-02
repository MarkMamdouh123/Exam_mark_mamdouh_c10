import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/secondScreen.dart';
import 'package:exam/thirdScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> getTiles() {
    return images
        .map(
          (element) => Image.asset(
            element,
            fit: BoxFit.fill,
          ),
        )
        .toList();
  }

  int currentTabIndex = 0;
  int indexx = 0;
  List<String> images = [
    'assets/images/Frame 24.png',
    'assets/images/Frame 24.png',
    'assets/images/Frame 24.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Moody'),
          leading: Image.asset('assets/images/logo.png'),
          actions: [
            Badge(
              backgroundColor: Colors.red,
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentTabIndex,
            onTap: (value) {
              currentTabIndex = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SecondScreen.routeName);
                      },
                      child: Icon(Icons.grid_view)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ThirdScreen.routeName);
                      },
                      child: Icon(Icons.calendar_today)),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Sara Rose",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'How are you feeling today ?',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/loveFace.png'),
                        ),
                        Text(
                          'Love',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/coolFace.png'),
                          radius: 40,
                        ),
                        Text(
                          'Cool',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/happFace.png'),
                        ),
                        Text(
                          'Happy',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/sadFace.png'),
                        ),
                        Text(
                          'Sad',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Feature',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'See More',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: getTiles(),
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      indexx = index;
                      setState(() {});
                    },
                  ),
                ),
                AnimatedSmoothIndicator(
                  onDotClicked: (index) {},
                  activeIndex: indexx,
                  count: images.length,
                  effect: JumpingDotEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: Colors.red,
                      dotColor: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      'Exercise',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'See More',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF9F5FF),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/mind.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Relaxation'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffFDF2FA),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/peace.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Meditation'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFAF5),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/breathing.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Breathing'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 22),
                        decoration: BoxDecoration(
                          color: Color(0xffF9F5FF),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/yoga.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Yoga'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
