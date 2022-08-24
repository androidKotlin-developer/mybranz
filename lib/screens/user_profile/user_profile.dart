import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/user_profile/profile_setting.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({Key? key}) : super(key: key);

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_settings()));
            },
            child: Image.asset(
            'assets/images/edit.png',
            color: Colors.white,
          ),),
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
                  backgroundImage: AssetImage('assets/images/propic.png'),
                ),
                radius: 60.0,
                backgroundColor: Color(0xFFF12D4D),
              ),
            ),
            Container(margin: EdgeInsets.only(top: 30), child: Text(
              'Mina Lavedifellis',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white),
            ),),
            Container(margin: EdgeInsets.only(top: 10), child: Text(
              'She/ Her',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white),
            ),),
            Container(margin: EdgeInsets.only(top: 5), child: Text(
              'Lover of fashion food and travel',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),),
            Container(margin: EdgeInsets.only(top: 35 , left: 70 , right: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Gucci',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('|',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('Channel',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('|',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('D&G',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                ],),),
            Container(margin: EdgeInsets.only(top: 35 , left: 130 , right: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Dior',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('|',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                  Text('Supreme',style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.white),),
                ],),),
            Container(margin: EdgeInsets.only(top: 60 , left: 50 , right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Text('44.1K' , style: GoogleFonts.roboto(fontWeight: FontWeight.w500 , fontSize: 18 , color: Colors.white),),
                    Text('Followers' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 12 , color: Colors.white),)
                  ],),
                  Text('|' ,style: GoogleFonts.roboto(color: Colors.white ,fontSize: 30),),
                  Column(children: [
                    Text('44.1K' , style: GoogleFonts.roboto(fontWeight: FontWeight.w500 , fontSize: 18 , color: Colors.white),),
                    Text('Following' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 12 , color: Colors.white),)
                  ],),
                  Text('|' ,style: GoogleFonts.roboto(color: Colors.white ,fontSize: 30),),
                  Column(children: [
                    Text('44.1K' , style: GoogleFonts.roboto(fontWeight: FontWeight.w500 , fontSize: 18 , color: Colors.white),),
                    Text('Friends' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 12 , color: Colors.white),)
                  ],),

                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 60),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFF12D4D),
                child: Image.asset('assets/images/uparrow.png' , height: 30),
              ),)
          ],
        ),
        ),
      ),
    );
  }
}
