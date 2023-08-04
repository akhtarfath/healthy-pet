import 'package:flutter/material.dart';

Widget bottomNavBar() {
  return BottomAppBar(
    child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/home.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/heart.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/message-circle.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/user.png",
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    ),
  );
}
