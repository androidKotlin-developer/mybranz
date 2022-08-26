import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User_Details extends StatefulWidget {
  const User_Details({Key? key}) : super(key: key);

  @override
  State<User_Details> createState() => _User_DetailsState();
}

class _User_DetailsState extends State<User_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_hennah128' , style: GoogleFonts.roboto(fontWeight: FontWeight.w600 , fontSize: 16 , color: Colors.white),),
      ),
    );
  }
}
