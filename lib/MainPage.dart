import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Artist_Page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff2dbdc0),
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff2dbdc0),
        unselectedItemColor: Color(0xffaab2ca),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 36),
              child: Icon(Icons.explore),
            ),
            title: Text('EXPLORE'),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Icon(Icons.chat),
            ),
            title: Text('CHAT'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PERSON'),
          )
        ],
      ),
      body: ArtistPage(),
    );
  }
}
