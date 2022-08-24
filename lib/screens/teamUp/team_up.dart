import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/teamUp/camera.dart';

class TeamUp extends StatefulWidget {
  const TeamUp({Key? key}) : super(key: key);

  @override
  State<TeamUp> createState() => _TeamUpState();
}

List<String> images = [
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
  'assets/bg1.png',
];

class _TeamUpState extends State<TeamUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Teams',
          style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => Open_Camera()));
        },
        label:  Text('Team Up', style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500),),
        backgroundColor: Color(0xFFF12D4D),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(flex:5,child: Text('sort' , style: GoogleFonts.roboto(fontSize: 15 , fontWeight: FontWeight.w500, color: Colors.white),),),
          Expanded(
            flex: 95,
            child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: MediaQuery.of(context).size.height * 0.2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.fill,
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 1,
                      left: 8,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/like.png',
                            height: 15,
                            width: 15,
                          ),
                          Container(
                            transform: Matrix4.translationValues(2, -2.5, 0),
                            child: Text(
                              '10k',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),)
        ],),
      ),
    );
  }
}
