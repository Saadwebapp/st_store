import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:st_store/screens/add_to_cart.dart';
import 'package:st_store/screens/placeOrder.dart';
import 'package:st_store/screens/user.dart';
import 'package:st_store/widgets/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    // SingleChildScrollView(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 20, left: 20.0),
    //         child: Icon(Icons.menu),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(top: 30, left: 20.0),
    //         child: Center(child: Text("Browse by Categories")),
    //       )
    //     ],
    //   ),
    // ),
    Homescreen(),
    Center(
      child: Text("Search"),
    ),
    AddToCart(),
    User(),
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: pages[_currentIndex]),
      bottomNavigationBar: SalomonBottomBar(
        selectedColorOpacity: 0.2,
        selectedItemColor: Colors.black,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
            selectedColor: Color(0xffC6AB59),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Color(0xffC6AB59),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag_outlined
            ),
            title: Text("Order"),
            selectedColor: Color(0xffC6AB59),
          ),

          /// Profile
          SalomonBottomBarItem(

            icon: Icon(Icons.person_outline),
            title: Text("User"),
            selectedColor: Color(0xffC6AB59),
          ),
        ],
      ),
    );
  }
}
