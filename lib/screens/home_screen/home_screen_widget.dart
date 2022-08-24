import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/teamUp/team_up.dart';
import 'package:share_plus/share_plus.dart';

List<String> name = [
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
  'Manya Sharma',
];
List<String> time = [
  '2 min ago',
  '3 min ago',
  '4 min ago',
  '7 min ago',
  '1 min ago',
  '2 min ago',
  '3 min ago',
  '4 min ago',
  '7 min ago',
  '1 min ago',
  '1 min ago',
];

List<String> commentname = ['Jane Doe', 'Jane Doe'];

class HomeScreen_widget extends StatefulWidget {
  const HomeScreen_widget({Key? key}) : super(key: key);

  @override
  State<HomeScreen_widget> createState() => _HomeScreen_widgetState();
}

class _HomeScreen_widgetState extends State<HomeScreen_widget> {
  bool _isliked = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg1.png'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child:  Container(
            alignment: Alignment.topCenter,
            child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 17,
                  width: 17,
                  child: Icon(Icons.search, color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      'Trending',
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'For You',
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                  width: 17,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),),),

          Padding(
            padding: EdgeInsets.only(left: 35, bottom: 20, top: 10, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/profile.png'),
                    Container(
                      transform: Matrix4.translationValues(7, -7, 0),
                      child: Text(
                        'Jane Doe',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'This dress is worth all the hype. I’ve never gotten so many compliments wearing a ...',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),

           Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding:
                EdgeInsets.only(left: 35, bottom: 20, top: 10, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Image.asset('assets/brand.png'),
                    ),
                    InkWell(
                      onTap: () {
                          setState(() {
                            _isliked = !_isliked;
                          });
                      },
                      onLongPress: () => showModalBottomSheet(
                        backgroundColor: Color(0xFF1F1F1F),
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Likes',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 90,
                                  child: ListView.builder(
                                      itemCount: name.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              left: 40,
                                              bottom: 10,
                                              top: 10,
                                              right: 40),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                          'assets/profile.png'),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                            name[index],
                                                            style: GoogleFonts.roboto(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                          ),
                                                          Text(
                                                            time[index],
                                                            style: GoogleFonts.roboto(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                    width: 80,
                                                    child: OutlinedButton(
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                          side: BorderSide(
                                                              width: 2,
                                                              color: Colors
                                                                  .white)),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Add friend',
                                                        style:
                                                        GoogleFonts.roboto(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                            FontWeight
                                                                .w300),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        );
                                      })),
                            ],
                          );
                        },
                      ),
                      child: _isliked ? Image.asset('assets/liked.png') : Image.asset('assets/like.png'),
                    ),
                    InkWell(
                      onTap: () => showModalBottomSheet(
                        backgroundColor: Color(0xFF1F1F1F),
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Expanded(
                                flex: 10,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Comments',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 80,
                                child: ListView.builder(
                                  itemCount: commentname.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          left: 30,
                                          bottom: 10,
                                          top: 10,
                                          right: 30),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/profile.png'),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        'Jane Doe',
                                                        style:
                                                        GoogleFonts.roboto(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500),
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            0.6,
                                                        child: Text(
                                                          overflow:
                                                          TextOverflow.clip,
                                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris dignissim risus et congu',
                                                          style: GoogleFonts
                                                              .roboto(
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 10,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w300),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset(
                                                    'assets/like.png',
                                                    height: 15,
                                                    width: 15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(flex: 10,child: Image.asset('assets/profile.png'),),
                                      SizedBox(width: 10,),
                                      const Expanded(
                                        flex: 90,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white
                                                ),
                                              ),
                                              isDense: true,
                                              enabled: true,
                                              hintText: "comment here",
                                              hintStyle: TextStyle(color: Colors.white,),
                                              suffixText: 'Post',
                                              suffixStyle: TextStyle(color: Colors.white,)
                                          ),
                                          style: TextStyle(color: Colors.white),
                                        ),),
                                    ],
                                  ),),)
                            ],
                          );
                        },
                      ),
                      child: Image.asset('assets/chat.png'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TeamUp()));
                      },
                      child: Image.asset('assets/follower.png'),
                    ),
                    InkWell(
                      onTap: () async {
                        print('hello');
                        final box = context.findRenderObject() as RenderBox?;
                        await Share.share('Hello this is a test',
                          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,);
                      },
                      child: Image.asset('assets/share.png'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    ),);
  }
}
