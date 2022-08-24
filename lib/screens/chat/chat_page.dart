import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/chat/chat_screen.dart';

List<String> name = [
  'Sierra Leone',
  'Maddison Smith',
  'Johnny Arthur',
  'DJ',
  'Shayne Cob',
  'Sean McGill',
  'Jonathan',
  'Rose Matthews',
  'Jonathan',
  'Sean McGill',
  'Johnny Arthu',
];

List<String> subtext = [
  'Lookin’ cute',
  'When are you going to review my ne...',
  'Sick dress buddyyyyy',
  'I loved your review of the..',
  'Lookin’ cute',
  'When are you going to review my ne...',
  'Sick dress buddyyyyy',
  'I loved your review of the..',
  'Lookin’ cute',
  'When are you going to review my ne...',
  'Sick dress buddyyyyy',
];
List<String> profile = [
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
  'assets/profile.png',
];

class All_Chat extends StatefulWidget {
  const All_Chat({Key? key}) : super(key: key);

  @override
  State<All_Chat> createState() => _All_ChatState();
}

class _All_ChatState extends State<All_Chat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
        actions: [
          Container(
            transform: Matrix4.translationValues(-16, 0, 0),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        title: Text(
          'Your Messages',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF313131),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF313131)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF313131)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF313131)),
                      ),
                      isDense: true,
                      enabled: true,
                      hintText: "search",
                      hintStyle: TextStyle(
                        color: Color(0xFF000000),
                      ),
                    ),
                    style: TextStyle(color: Color(0xFF313131)),
                  ),
                ),
              ),
              Expanded(
                  flex: 90,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Chat_Page(name: 'Jay',)));
                    },
                    child: ListView.builder(
                        itemCount: profile.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10 ,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(profile[index]),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          name[index],
                                          style: GoogleFonts.roboto(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          subtext[index],
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Text(
                                  '2d',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xFF979797),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          );
                        }),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
