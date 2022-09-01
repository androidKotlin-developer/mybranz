import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/setting_screens/my_account/blocked_acc/block_acc.dart';
import 'package:mybranz/screens/setting_screens/my_account/mydata/my_data.dart';
import 'package:mybranz/screens/setting_screens/my_account/p_information/personal_information.dart';

import 'change_password/change_password.dart';

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
                    _index == 0
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => P_Information()))
                        : _index == 1
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Change_Password()))
                            : _index == 2
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Mydata()))
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Blocked()));
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
}
