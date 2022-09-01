import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blocked extends StatefulWidget {
  const Blocked({Key? key}) : super(key: key);

  @override
  State<Blocked> createState() => _BlockedState();
}

class _BlockedState extends State<Blocked> {

  List<String> Uimg = [
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
    'assets/profile1.png',
  ];
  List<String> Uname = [
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
    'Jane Doe',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1919),
          title: Text(
            'Blocked Account',
            style: GoogleFonts.roboto(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          child: ListView.builder(
            itemCount: Uimg.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin:
                EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(Uimg[index]),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Uname[index],
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    'It include all new account they may have created',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 76,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Unblock',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
