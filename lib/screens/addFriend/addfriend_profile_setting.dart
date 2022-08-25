import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../chat/chat_page.dart';
import '../home_screen/home_screen_widget.dart';
import '../user_profile/user_profile.dart';

class AddFriend_Profile_Setting extends StatefulWidget {
  const AddFriend_Profile_Setting({Key? key}) : super(key: key);

  @override
  State<AddFriend_Profile_Setting> createState() => _AddFriend_Profile_SettingState();
}

class _AddFriend_Profile_SettingState extends State<AddFriend_Profile_Setting> {

  List<String> titles = [
    'Share Profile ',
    'Search Profile, Product or Brand',
    'Report Profile',
    'Block'
  ];
  int _page = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Profile Setting' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white),),
      ),
      body: Container(
          color: Colors.black,
          child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return  GestureDetector(

              onTap: (){
                setState(() {
                  _page =index;
                });
                PageView(
                onPageChanged: (page) {
                  setState(() {
                    _page = page;
                    _controller.jumpToPage(index);
                  });
                },
                  controller: _controller,
                  children: const [HomeScreen_widget(), All_Chat(), HomeScreen_widget(), User_Profile()],);
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                child: Text(
                  titles[index],
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                ),
            ),);
          })),
    );
  }
}
