import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Change_Password extends StatefulWidget {
  const Change_Password({Key? key}) : super(key: key);

  @override
  State<Change_Password> createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'Change Password',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        actions: [
          Container(
            transform: Matrix4.translationValues(-10, 19, 0),
            child: Text(
              'Save',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF12D4D)),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
          color: Colors.black,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A)),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Current Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'New Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Confirm Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
