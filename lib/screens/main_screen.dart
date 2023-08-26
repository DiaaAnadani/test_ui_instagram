// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/likes_screen.dart';
import 'package:untitled/screens/profile_screen.dart';
import 'package:untitled/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar(),
      body: getScreen(),
      bottomNavigationBar: bottomBarWidget(),
    );
  }

  Widget bottomBarWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              index = 0;
              setState(() {});
            },
            child: Image.asset(
              "assets/icons/home.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {
              index = 1;
              setState(() {});
            },
            child: Image.asset(
              "assets/icons/search.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {
              index = 2;
              setState(() {});
            },
            child: Image.asset(
              "assets/icons/add_post.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {
              index = 3;
              setState(() {});
            },
            child: Image.asset(
              "assets/icons/like.png",
              color: Colors.white,
              width: 25,
              height: 25,
            ),
          ),
          InkWell(
            onTap: () {
              index = 4;
              setState(() {});
            },
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A="),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getScreen() {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return SearchScreen();
      case 3:
        return LikesScreen();
      case 4: 
       return ProfileScreen();
      default:
       return Container();
    }
  }

  PreferredSizeWidget? showAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: const Text(
        "Instagram",
        style: TextStyle(fontFamily: 'FontSpring', fontSize: 26),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Image.asset(
            "assets/icons/messenger.png",
            color: Colors.white,
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }
}
