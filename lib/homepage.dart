import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/constants.dart';
import 'package:bottom_animation/bottom_animation.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = <BottomNavItem> [
    BottomNavItem(title: 'Chats', iconData: CupertinoIcons.mail),
    BottomNavItem(title: 'Events', iconData: CupertinoIcons.time),
    BottomNavItem(title: 'Notifications', iconData: CupertinoIcons.bell),
  ];
  var cIndex;
  @override
  void initState() {
    cIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: sHomeColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: pHomeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 80),
            child: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(10))
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.amber,
                  ),
                  hintText: "search...",
                  fillColor: Colors.white70,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 125),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Carousel(
                images: [
                  Image.asset('assets/bio.jpg'),
                  Image.asset('assets/dark.jpg'),
                  Image.asset('assets/hazard.jpg'),
                ],
                showIndicator: false,
                boxFit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAnimation(
        selectedIndex: cIndex,
        items: items,
        backgroundColor: pHomeColor,
        onItemSelect: (value) {
          setState(() {
            cIndex = value;
          });
        },
        itemHoverColor: Colors.white,
        itemHoverColorOpacity: .9,
        activeIconColor: Colors.blueGrey,
        deactiveIconColor: Colors.white.withOpacity(.9),
        barRadius: 20,
        barHeight: 50,
        textStyle: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        itemHoverWidth: 100,
        itemHoverHeight: 30,
        itemHoverBorderRadius: 20,
      ),
    );
  }
}
