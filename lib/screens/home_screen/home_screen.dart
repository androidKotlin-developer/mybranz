import 'package:flutter/material.dart';
import 'package:mybranz/screens/chat/chat_page.dart';
import 'package:mybranz/screens/home_screen/home_screen_widget.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int _page = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _page);
    super.initState();
  }

  Widget bodyFunction() {
    switch (_page) {
      case 0:
        return const HomeScreen_widget();

      case 1:
        return const All_Chat();

      case 2:
        return const HomeScreen_widget();

      default:
        return const All_Chat();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red,
        items:  [
          BottomNavigationBarItem(
            icon:  Image.asset("assets/home.png" ,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/chat1.png",),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/notification.png",),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/user.png",),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            _controller.jumpToPage(index);
          });
        },
        currentIndex: _page,
      ),
      body: PageView(
        onPageChanged: (page) {
          setState(() {
            _page = page;
          });
        },
        controller: _controller,
        children: const [HomeScreen_widget(), All_Chat(), HomeScreen_widget(), All_Chat()],
      ),
    );
  }
}
