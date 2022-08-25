import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> Accounttitle = [
  'Personal Information',
  'Change Password',
  'Download My data',
  'Blocked',
];

List<String> Accountsubtitle = [
  'See information about your profile',
  'Change your password',
  'Get information about type of data stored in account',
  'See blocked contacts',
];

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

class My_Account extends StatefulWidget {
  const My_Account({Key? key}) : super(key: key);

  @override
  State<My_Account> createState() => _My_AccountState();
}

class _My_AccountState extends State<My_Account> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'My Account',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
          color: Colors.black,
          child: ListView.builder(
              itemCount: Accounttitle.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = index;
                    });
                    _index == 1
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => _Change_Password()))
                        : _index == 3
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => _BLocked()))
                            : Container();
                  },
                  child: Container(
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Accounttitle[index],
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                Accountsubtitle[index],
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/forwardarrow.png'),
                        ],
                      )),
                );
              })),
    );
  }

  _Change_Password() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'Change Password',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        actions: [
          Container(
            transform: Matrix4.translationValues(-10, 19, 0),
            child: Text(
              'Save',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF12D4D)),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
          color: Colors.black,
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Password',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A6A)),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Current Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'New Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Confirm Password',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF12D4D),
                      ),
                    ),
                    focusColor: Color(0xFFF12D4D),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  _BLocked() {
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
                margin: EdgeInsets.only(left: 25 ,right: 25 ,top: 10 , bottom: 10),
                child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(Uimg[index]),
                          SizedBox(width: 10,),
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
                      Container(
                        width: 76,
                        child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Unblock' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 12 , color: Colors.white),),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.white),
                        ),
                      ),)
                    ],
                  ),
                ],
              ),);
            },
          ),
        ));
  }
}
