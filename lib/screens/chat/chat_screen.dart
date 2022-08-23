import 'package:flutter/material.dart';

import '../home_screen/home_screen_widget.dart';

class Chat_Page extends StatefulWidget {
  final String name;
  const Chat_Page({Key? key , required this.name}) : super(key: key);

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/profile.png'),
      ),
    );
  }
}
