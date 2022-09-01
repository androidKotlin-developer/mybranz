import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List<String> profile = [
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
    'assets/profile.png',
  ];
  List<String> searcHname = [
    'Nike Blazers',
    'Chain Belts',
    'Sequin-Embelished Blouse',
    'Puzzle Hobo Bags',
    'Nike Blazers',
    'Chain Belts',
    'Sequin-Embelished Blouse',
    'Puzzle Hobo Bags',
    'Nike Blazers',
    'Chain Belts',
    'Sequin-Embelished Blouse',
  ];
  List<String> brandprofile = [
    'assets/photos/sephora.png',
    'assets/photos/parada.png',
    'assets/photos/guccii.png',
    'assets/photos/dg.png',
  ];
  List<String> brandname = ['Saphora', 'Parada', 'Gucci', 'D&G'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF1F2123),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 90,
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF1F2123),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF1F2123),
                            ),
                          ),
                          focusColor: Color(0xFF1F2123),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'Recent searches',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 25),
                  height: 100,
                  child: ListView.builder(
                    itemCount: profile.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(profile[index]),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 45,
                              child: Text(
                                'Mansoor Siddiqui',
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 5,
                  color: Color(0xFF2F2F2F),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 12),
                  child: Text(
                    'Top searches on MyBranz',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11, left: 25),
                  height: 160,
                  child: ListView.builder(
                      itemCount: searcHname.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Text(
                                searcHname[index],
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  height: 5,
                  color: Color(0xFF2F2F2F),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 12),
                  child: Text(
                    'Popular Brands on MyBranz',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 11, left: 25),
                  height: 200,
                  child: ListView.builder(
                      itemCount: brandprofile.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.white),
                                height: 40,
                                width: 40,
                                child: Image.asset(brandprofile[index]),
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Text(
                                brandname[index],
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  height: 5,
                  color: Color(0xFF2F2F2F),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 12),
                  child: Text(
                    'Popular Profile on MyBranz',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15, left: 25),
                  height: 100,
                  child: ListView.builder(
                    itemCount: profile.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: 30,
                          top: 15,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(profile[index]),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mansoor Siddiqui',
                              style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
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
