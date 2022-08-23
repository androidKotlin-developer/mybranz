import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/profile_screen/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://www.thisiscolossal.com/wp-content/uploads/2018/04/agif1opt.gif"),
            // image: AssetImage("assets/images/loginbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.transparent.withOpacity(0.4),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text(
                  "MyBranz",
                  style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 42,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4).withOpacity(0.1),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/FbLogo.png",
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Sign up with Facebook",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4).withOpacity(0.1),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/googlelogo1.png",
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Sign up with Facebook",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/ioslogo.png",
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Sign up with Facebook",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }
}
