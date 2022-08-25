import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/addFriend/addfriend_profile_setting.dart';

import '../user_profile/profile_setting.dart';

class Add_Friend extends StatefulWidget {
  const Add_Friend({Key? key}) : super(key: key);

  @override
  State<Add_Friend> createState() => _Add_FriendState();
}

class _Add_FriendState extends State<Add_Friend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        elevation: 2,
        title: Text(
          '_Miyah',
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            'assets/images/pencile.png',
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile_settings()));
            },
            child: Image.asset(
              'assets/images/edit.png',
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 22,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/probg.png'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: 57,
                    backgroundImage: AssetImage('assets/profile2.png'),
                  ),
                  radius: 60.0,
                  backgroundColor: Color(0xFFF12D4D),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  'Mina Lavedifellis',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'She/ Her',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  'Lover of fashion food and travel',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left: 30 , right: 30 ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 112,child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 1),
                        backgroundColor: Color(0xFF1F2123),
                        content: Container(
                          height: 35,
                          child:Column(
                          children: [
                            Align( alignment: Alignment.topLeft, child: Text('You Followed Hannah.' , style: GoogleFonts.roboto(color: Colors.white),),),
                            Align( alignment: Alignment.bottomRight, child: Text('Dismiss', style: GoogleFonts.roboto(color: Colors.white)),),
                          ],
                        ),
                      )));
                    },
                    child: Text(
                      'Add Friend',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFF12D4D),
                    ),
                  ),),
                  SizedBox(width: 112,child:OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 1),
                          backgroundColor: Color(0xFF1F2123),
                          content: Container(
                            height: 35,
                            child:Column(
                              children: [
                                Align( alignment: Alignment.topLeft, child: Text('You Added Hannah as a friend.' , style: GoogleFonts.roboto(color: Colors.white , fontSize: 14 , fontWeight: FontWeight.w400),),),
                                Align( alignment: Alignment.bottomRight, child: Text('Dismiss', style: GoogleFonts.roboto(color: Colors.white , fontSize: 12 , fontWeight: FontWeight.w600)),),
                              ],
                            ),
                          )));
                    },
                    child: Text(
                      'Follow',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.white),
                    ),
                  )),
                  SizedBox(width: 40,child:OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddFriend_Profile_Setting()));
                    },
                    child: Image.asset('assets/images/edit.png' ,color: Colors.white,),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.white),
                    ),
                  )),
                ],
              ),),
              Container(
                margin: EdgeInsets.only(top: 35, left: 70, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Gucci',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      '|',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Channel',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      '|',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'D&G',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35, left: 130, right: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Dior',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      '|',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      'Supreme',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '44.1K',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          'Followers',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      '|',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 30),
                    ),
                    Column(
                      children: [
                        Text(
                          '44.1K',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          'Following',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      '|',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 30),
                    ),
                    Column(
                      children: [
                        Text(
                          '44.1K',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          'Friends',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFF12D4D),
                  child: Image.asset('assets/images/uparrow.png', height: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
