import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/home_screen/home_screen.dart';
import 'package:mybranz/screens/user_profile/profile_setting.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:transparent_image/transparent_image.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({Key? key}) : super(key: key);

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  bool _index = true;
  int _page = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _page);
    super.initState();
  }
  List<String> imagelist =[
    'assets/photos/1.png' ,
    'assets/photos/2.png' ,
    'assets/photos/3.png' ,
    'assets/photos/4.png' ,
    'assets/photos/6.png' ,
    'assets/photos/7.png' ,
    'assets/photos/8.png' ,
    'assets/photos/1.png' ,
    'assets/photos/2.png' ,
    'assets/photos/3.png' ,
    'assets/photos/4.png' ,
    'assets/photos/6.png' ,
    'assets/photos/7.png' ,
    'assets/photos/8.png' ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1919),
        elevation: 2,
        leading: InkWell(onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home_screen()));
        }, child: Icon(Icons.arrow_back),),
        title: Text(
          '_Miyah',
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            'assets/images/pencile.png',
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile_settings()));
            },
            child: Image.asset(
              'assets/images/edit.png',
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 22,
          )
        ],
      ),
      body: _index == true ? _Profile_Container() : _Profile_Details(),
    );
  }

  _Icons(){
    return Row(
      children: [

      ],
    );
  }

  _Profile_Container() {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/probg.png'), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                child: CircleAvatar(
                  radius: 57,
                  backgroundImage: AssetImage('assets/images/propic.png'),
                ),
                radius: 60.0,
                backgroundColor: Color(0xFFF12D4D),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Mina Lavedifellis',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'She/ Her',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                'Lover of fashion food and travel',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 70, right: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Gucci',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '|',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'Channel',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '|',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'D&G',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 130, right: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Dior',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '|',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'Supreme',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '44.1K',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        'Followers',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    '|',
                    style:
                    GoogleFonts.roboto(color: Colors.white, fontSize: 30),
                  ),
                  Column(
                    children: [
                      Text(
                        '44.1K',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        'Following',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    '|',
                    style:
                    GoogleFonts.roboto(color: Colors.white, fontSize: 30),
                  ),
                  Column(
                    children: [
                      Text(
                        '44.1K',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        'Friends',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = !_index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFF12D4D),
                  child: Image.asset('assets/images/uparrow.png', height: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _Profile_Details() {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: Padding(padding: EdgeInsets.only(left: 40 , right: 35),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _page == 0 ? _Photos_Tag() : Image.asset('assets/photos.png'),

                _page == 1 ? _Pin_Tag() : Image.asset('assets/pin.png'),

                _page == 2 ?  _Statstics_Tag() : Image.asset('assets/statstics.png'),
              ],
            ),)
          ),
          Expanded(
            flex: 90,
            child: GestureDetector(
              onHorizontalDragEnd: (dragDetails) {
                if (dragDetails.primaryVelocity! < 0) {
                  _page ++;
                  _controller.jumpToPage(_page);
                }
              },
              child: PageView(
                onPageChanged: (page) {
                  setState(() {
                    _page = page;
                  });
                },
                controller: _controller,
                children: [
                  _Phots_Container(),
                  _Pin_Container(),
                  _Statstics_Container()
                ],
              ),),
          ),
        ],
      ),
    );
  }

  _Photos_Tag() {
    return Container(decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xFFF12D4D),
        borderRadius: BorderRadius.circular(5)
    ),
      height: 35,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/photos.png'),
        SizedBox(width: 10,),
        Text('Photos', style: GoogleFonts.roboto(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)
      ],),);
  }
  _Phots_Container(){
    return Container(
      margin: EdgeInsets.only(left: 40 , right: 35),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        itemCount: imagelist.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(15))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
              child: Image.asset(imagelist[index],fit: BoxFit.fill,),
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(1, index.isEven ? 1.0 : 1.5);
        },
      ),
    );
  }

  _Pin_Tag() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFFF12D4D),
          borderRadius: BorderRadius.circular(5)

      ),
      height: 35,
      width: 90,

      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/pin.png' ),
        SizedBox(width: 5,),
        Text('Pin', style: GoogleFonts.roboto(fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white),)
      ],),);
  }
  _Pin_Container(){
    return Container(
      margin: EdgeInsets.only(left: 40 , right: 35),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        itemCount: imagelist.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(15))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
              child: Image.asset(imagelist[index],fit: BoxFit.fill,),
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(1, index.isEven ? 1.0 : 1.5);
        },
      ),
    );
  }

  _Statstics_Tag(){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFFF12D4D),
          borderRadius: BorderRadius.circular(5)

      ),
      height: 35,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image.asset('assets/statstics.png'),
      SizedBox(width: 10,),
      Text('Statstics', style: GoogleFonts.roboto(fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.white),)
    ],),);
  }
  _Statstics_Container(){
    return Container(
      margin: EdgeInsets.only(left: 40 , right: 35),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        itemCount: imagelist.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                    Radius.circular(15))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
              child: Image.asset(imagelist[index],fit: BoxFit.fill,),
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(1, index.isEven ? 1.0 : 1.5);
        },
      ),
    );
  }
}
