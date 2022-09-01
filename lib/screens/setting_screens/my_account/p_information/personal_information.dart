import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P_Information extends StatefulWidget {
  const P_Information({Key? key}) : super(key: key);

  @override
  State<P_Information> createState() => _P_InformationState();
}

class _P_InformationState extends State<P_Information> {
  List<String> PItitle = [
    'Username',
    'Phone',
    'Email',
    'Country',
    'Log Out',
  ];
  List<String> PIsubtitle = [
    'Hennah Lavedifellis',
    '+91 78148  37844',
    'Hannahlavedifellis44@gmail.com',
    'India',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'Personal Information',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFF0E0E0E),
        child: ListView.builder(
            itemCount: PItitle.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 35, left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(PItitle[index],
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(PIsubtitle[index],
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white)),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
