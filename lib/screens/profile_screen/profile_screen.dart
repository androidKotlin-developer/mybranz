import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/Interests/interests.dart';
import 'package:mybranz/screens/profile_screen/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/probg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                child: CircleAvatar(
                                  radius: 70.0,
                                  backgroundColor: Color(0xFFF12D4D),
                                  child: CircleAvatar(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFF12D4D),
                                        radius: 18.0,
                                        child: Icon(
                                          Icons.add_rounded,
                                          size: 25.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    radius: 68.0,
                                    backgroundImage:
                                        AssetImage('assets/images/propic.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 26),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                "Name",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              enabled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                "Username",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              enabled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                "Pronouns",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              enabled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                "Bio",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              enabled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                "Location",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              enabled: true,
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InterestsScreen(),
                            ),
                          );
                          print("nextButton was clicked");
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffF12D4D),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
