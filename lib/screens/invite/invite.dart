import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  List<String> Uimg = [
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
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
        backgroundColor: Color(0XFF1A1919),
        leading: Container(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        title: Text("Interests"),
        centerTitle: true,
      ),
      body: Container(
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
            SizedBox(height: 15),
            Expanded(
              flex: 86,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: ListView.builder(
                  itemCount: Uimg.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 18,
                                child: Container(
                                  // color: Colors.green,
                                  child: Image.asset(
                                    Uimg[index],
                                    scale: 0.5,
                                    // fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                flex: 58,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: Text(
                                      Uname[index],
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 24,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        "Invite",
                                        style: GoogleFonts.roboto(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 14,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InviteScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF12D4D),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
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
    );
  }
}
