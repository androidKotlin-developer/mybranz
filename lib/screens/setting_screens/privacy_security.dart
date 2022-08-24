import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> title = [
  'Clear Conversation',
  'Clear Search History',
  'Contact Syncing',
  'Permissions',
  'My Data',
];
List<String> subtitle = [
  'Clear conversation with your friends',
  'Clear your search history',
  'Give contact permission by tapping add friend',
  'Camera, Contact, Location, Call log Storage',
  'Access your data',
];

class Privacy_Security extends StatefulWidget {
  const Privacy_Security({Key? key}) : super(key: key);

  @override
  State<Privacy_Security> createState() => _Privacy_SecurityState();
}

class _Privacy_SecurityState extends State<Privacy_Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        title: Text(
          'Privacy & Security',
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: title.length,
            itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 20 ,left: 30 ,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      subtitle[index],
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
                Image.asset('assets/images/forwardarrow.png'),
              ],
            ),
          );
        }),
      ),
    );
  }
}
