// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/add_post.dart';
import 'package:flutter_insta/screens/home.dart';
import 'package:flutter_insta/screens/profile.dart';
import 'package:flutter_insta/screens/search.dart';
import 'package:flutter_insta/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobileBackgroundColor,
        onTap: (index) {
          // navigate to the tabed page
          _pageController.jumpToPage(index);

          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: currentPage == 0 ? primaryColor : secondaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: currentPage == 1 ? primaryColor : secondaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: currentPage == 2 ? primaryColor : secondaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: currentPage == 3 ? primaryColor : secondaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: currentPage == 4 ? primaryColor : secondaryColor,
              ),
              label: ""),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          AddPost(),
          Center(child: Text("data")),
          Profile(),
        ],
      ),
    );
  }
}
