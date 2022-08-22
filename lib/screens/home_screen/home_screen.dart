import 'package:flutter/material.dart';
import 'package:mybranz/screens/home_screen/home_screen_widget.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Image.asset("assets/home.png" , color: Color(0xFFDADADA),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/chat1.png",color: Color(0xFFDADADA),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/notification.png",color: Color(0xFFDADADA),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/user.png",color: Color(0xFFDADADA),),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            // _controller.jumpToPage(index);
          });
        },
        currentIndex: _page,
        selectedItemColor:  Color(0xFFF12D4D),
      ),
      body: SafeArea(
        child: HoemScreen_widget(),
      ),
    );
  }
}
