// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Create_Post extends StatefulWidget {
   final image;

   Create_Post({Key? key, required this.image}) : super(key: key);

  @override
  State<Create_Post> createState() => _Create_PostState();
}

class _Create_PostState extends State<Create_Post> {
  bool position = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        actions: [
          Image.asset('assets/right.png'),
        ],
        title: Text(
          'New Post',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: position == true
          ? Container(
              color: Color(0xFF0E0E0E),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 25, right: 25, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PHOTOS',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6A6A6A)),
                        ),
                        Text(
                          '3/6',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6A6A6A)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.file(widget.image),),
                        Positioned(
                          left: 10,
                          top: MediaQuery.of(context).size.height / 3.5,
                          child: CircleAvatar(
                            backgroundColor: Color(0x49373737),
                            radius: 15,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: MediaQuery.of(context).size.height / 3.5,
                          child: CircleAvatar(
                            backgroundColor: Color(0x49373737),
                            radius: 15,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 20,
                            child: Icon(
                              Icons.delete_outline_rounded,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFF12D4D)),
                              onPressed: () {
                                setState(() {
                                  position = false;
                                });
                              },
                              child: Text(
                                'Add Brand',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/location.png'),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Add Location',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/mention.png'),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Mention someone',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            )
          : _Confirm_Screen(),
    );
  }

  _Confirm_Screen() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF0E0E0E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'What do you think of the product?',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset('assets/imoji/likeit.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Like it',
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/imoji/loveit.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Love it',
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/imoji/netural.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Neutral',
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/imoji/notgood.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Not good',
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/imoji/verybad.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Very bad',
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'Tell us about your experience',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),

          Container(
            height: 36,
            margin: EdgeInsets.only(left: 20, right: 15, top: 25),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'What do you feel about the product...',
                hintStyle: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2C2C2C))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF2C2C2C))),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Tags',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  'See More',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFF12D4D)),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20 , right: 15 , top: 25),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Fashion',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Selfie',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Sunset',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#styleblogger',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 30 , right: 15 , top: 25),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Fashion',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Calm mind',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#SoloTrip',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Dresses',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25 , right: 15 , top: 25),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Fashion',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Selfie',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#Sunset',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                    child: Text(
                      '#styleblogger',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 15, bottom: 25),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFFF12D4D)),
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
