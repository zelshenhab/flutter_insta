// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/add_post.dart';
import 'package:flutter_insta/screens/home.dart';
import 'package:flutter_insta/screens/profile.dart';
import 'package:flutter_insta/screens/search.dart';
import 'package:flutter_insta/shared/colors.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  final PageController _pageController = PageController();

  navigate2Screen(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      iconColor = index;
    });
  }

  int iconColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                navigate2Screen(0);
              },
              icon: Icon(Icons.home,
                  color: iconColor == 0 ? primaryColor : secondaryColor)),
          IconButton(
              onPressed: () {
                navigate2Screen(1);
              },
              icon: Icon(Icons.search,
                  color: iconColor == 1 ? primaryColor : secondaryColor)),
          IconButton(
              onPressed: () {
                navigate2Screen(2);
              },
              icon: Icon(Icons.add_a_photo,
                  color: iconColor == 2 ? primaryColor : secondaryColor)),
          IconButton(
              onPressed: () {
                navigate2Screen(3);
              },
              icon: Icon(Icons.favorite,
                  color: iconColor == 3 ? primaryColor : secondaryColor)),
          IconButton(
              onPressed: () {
                navigate2Screen(4);
              },
              icon: Icon(Icons.person,
                  color: iconColor == 4 ? primaryColor : secondaryColor)),
        ],
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 28),
        ),
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
