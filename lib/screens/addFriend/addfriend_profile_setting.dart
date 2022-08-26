import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFriend_Profile_Setting extends StatefulWidget {
  const AddFriend_Profile_Setting({Key? key}) : super(key: key);

  @override
  State<AddFriend_Profile_Setting> createState() =>
      _AddFriend_Profile_SettingState();
}

class _AddFriend_Profile_SettingState extends State<AddFriend_Profile_Setting> {
  List<String> titles = [
    'Share Profile ',
    'Search Profile, Product or Brand',
    'Report Profile',
    'Block'
  ];
  int _page = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Profile Setting',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _page = index;
                });
                _page == 0
                    ? () {}
                    : _page == 1
                        ? () {}
                        : _page == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => _report_profile()))
                            : _Block();
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                child: Text(
                  titles[index],
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _report_profile() {
    List<String> title = [
      'Spam',
      'Nudity or pornography',
      'Graphic Violence',
      'I want to help',
      'Dangerous Organizations',
      'Something Else'
    ];
    List<String> subtitle = [
      'Misleading posts or misinformation or conspiracies',
      'Sexually explicit content',
      'Violent images or promotion of violence',
      'Report for a friend, family or known',
      'Violent threat, Animal abuse, Death or Injury',
      'Still do not want to see this'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Report Profile',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                height: 40,
                color: Color(0xFF2F2F2F),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Please select a problem',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 30, right: 30),
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
                                  SizedBox(
                                    height: 5,
                                  ),
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
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  _Block() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF2F2F2F),
            title: Text(
              'Are you sure you want to block Hannah\nLavedifellis?',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            content: Text(
              'Hannah Lavedifellis will no longer be able\nto:\n  - See your pins on your feed \n  - Tag you \n  - Start conversation with you   \n  - Add you as a friend\n  - Follow you\nIf you’re friends or following, blocking Hannah will also unfriend and unfollow him/her.',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF)),
                  )),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Block',
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFF12D4D)),
                  )),
            ],
          );
        });
  }
}
