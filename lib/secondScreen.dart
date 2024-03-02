import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = 'second';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          radius: 22,
          child: Image.asset('assets/images/Ellipse 10.png'),
        ),
        title: Column(
          children: [
            Text('Hello Jade'),
            Text('Ready to work out'),
          ],
        ),
        actions: [
          Badge(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.grey,
            ),
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
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.navigation), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]),
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xffF8F9FC),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.heart),
                              Text('Heart Rate'),
                            ],
                          ),
                          Text(
                            '81 BPM',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 23,
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.list),
                              Text('To do'),
                            ],
                          ),
                          Text(
                            '32,5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 23,
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Colors.blue,
                              ),
                              Text('Calo'),
                            ],
                          ),
                          Text(
                            '1000 cal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Workout Programs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                tabs: [
                  Tab(
                    text: 'All Type',
                  ),
                  Tab(
                    text: 'Full Body',
                  ),
                  Tab(
                    text: 'Upper',
                  ),
                  Tab(
                    text: 'Lower',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(33),
                  decoration: BoxDecoration(
                    color: Color(0xffEAECF5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('7 days'),
                          ),
                          Text(
                            "Morning Yoga",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Text(
                            "Improve mental focus",
                          ),
                          Row(
                            children: [
                              Icon(Icons.watch_later_rounded),
                              Text(
                                "30 min",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset('assets/images/stretchYoga.png')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 22,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffEAECF5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('3 days'),
                          ),
                          Text(
                            "Plank Exercise",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Text(
                            "Improve Posture and stability",
                          ),
                          Row(
                            children: [
                              Icon(Icons.watch_later_rounded),
                              Text(
                                "30 min",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset('assets/images/pngwing 1.png')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
