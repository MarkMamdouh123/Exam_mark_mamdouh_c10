import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = 'third';

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int currentTabIndex = 0;
  int indexx = 0;
  List<String> images = ['assets/images/pict.png', 'assets/images/pict3.png'];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/flower.png'),
            SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/AliceCare.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentTabIndex,
          onTap: (value) {
            currentTabIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'Today'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: 'Insights'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: Colors.grey), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'Articles,video,Audio and More,...',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffD6BBFB))),
                  onPressed: () {},
                  child: Text(
                    'Discover',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'News',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Most Viewed',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Saved',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              children: [
                Text(
                  'Hot Topics',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
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
          Text(
            'Get Tips',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF2F4F7),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/Doctor-PNG-Images 1.png',
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Connect with doctors & get suggestions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Connect now and get expert insights'),
                      ElevatedButton(
                          onPressed: () {}, child: Text('view details')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Cycle phases and Period',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.purpleAccent,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
