import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat_Page extends StatefulWidget {
  final String profilename, picture;

  const Chat_Page({Key? key, required this.profilename, required this.picture})
      : super(key: key);

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(widget.profilename),
        leading: Image.asset(widget.picture),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded( flex: 100,child: Container()),
              Expanded( flex: 0,child: Container(
                margin: EdgeInsets.only(left: 20 , right: 20, bottom: 20),
                height: 45,
                width: MediaQuery.of(context).size.width ,
                child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xFF313131),
                  filled: true,
                  hintText: 'Type something...',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF313131)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF313131)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF313131)
                    ),
                  ),
                  prefixIcon: Icon(Icons.camera_alt , color: Color(0xFF7E7E7E),),
                  suffixIcon: Icon(Icons.photo , color: Color(0xFF7E7E7E),),
                  hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xFF7E7E7E)),
                ),
              ),),)
          ],
        ),),
    );
  }
}
