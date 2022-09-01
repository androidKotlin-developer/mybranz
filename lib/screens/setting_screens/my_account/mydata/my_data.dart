import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mydata extends StatefulWidget {
  const Mydata({Key? key}) : super(key: key);

  @override
  State<Mydata> createState() => _MydataState();
}

class _MydataState extends State<Mydata> {
  bool _position = true;
  TextEditingController _controller = TextEditingController();
  String _password = 'jay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1919),
          title: Text(
            'My Data',
            style: GoogleFonts.roboto(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: _position == true
            ? Container(
                padding:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
                color: Color(0xFF0E0E0E),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your password',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        controller: _controller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF12D4D),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF12D4D),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: Color(0xFFF12D4D), width: 1)),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xFFC4C4C4),
                              size: 15,
                            ),
                            label: Text(
                              'Password',
                              style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFF12D4D)),
                            )),
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            if(_controller.text == _password){
                              setState(() {
                                _position = false;
                              });
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(duration: Duration(seconds: 1),
                                    backgroundColor: Color(0xFFF12D4D),
                                      content: Text('Wrong Password!' , style: GoogleFonts.roboto(fontSize: 15 , fontWeight: FontWeight.w500 , color: Colors.white),)));
                            }
                            print(_controller.text);
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF12D4D)),
                          child: Text(
                            'Continue',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              )
            : Container(
                color: Color(0xFF0E0E0E),
                padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'We Received Your Request',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'We’re preparing a copy of your data now. We’ll email you at hannaledifilis#@gmail.com when your data is ready to download!',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Thanks',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Color(0xFFF12D4D)),
                    ),
                    Text(
                      'Team MyBranz',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Color(0xFFF12D4D)),
                    ),
                  ],
                ),
              ));
  }
}
