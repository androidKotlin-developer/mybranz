import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/setting_screens/my_account.dart';
import 'package:mybranz/screens/setting_screens/privacy_security.dart';
import 'package:mybranz/screens/setting_screens/search_profile.dart';

import '../setting_screens/share_screen.dart';

List<String> titles = [
  'Share Profile ',
  'Search Profile, Product or Brand',
  'My Account ',
  'Privacy & Security ',
  'Log out',
];

class Profile_settings extends StatefulWidget {
  const Profile_settings({Key? key}) : super(key: key);

  @override
  State<Profile_settings> createState() => _Profile_settingsState();
}

class _Profile_settingsState extends State<Profile_settings> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'Profile Setting',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _page = index;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _page == 0
                              ? Share_Profile()
                              : _page == 1
                                  ? Search_Profile()
                                  : _page == 2
                                      ? My_Account()
                                      : _page == 3
                                          ? Privacy_Security()
                                          : Privacy_Security()));
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
                ),
              );
            }),
      ),
    );
  }
}
