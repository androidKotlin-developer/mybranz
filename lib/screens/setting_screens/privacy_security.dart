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
List<String> permissiontitle = [
  'Camera',
  'Contacts',
  'Location',
  'Microphone',
  'Phone',
  'Call logs',
  'Storage'
];
List<String> permissionsubtitle = [
  'Use to take photo, video, video chat and more.',
  'Your contacts will be uploaded on MyBranz so you can add friends.',
  'Use location to search, verify, advertise and more.',
  'Used to record audio for posts, videos, chats and more.',
  'Autofill phone number when you register MyBranz.',
  'Check calling phone to verify identity in registration.',
  'Save stories and posts to your device.'
];

class Privacy_Security extends StatefulWidget {
  const Privacy_Security({Key? key}) : super(key: key);

  @override
  State<Privacy_Security> createState() => _Privacy_SecurityState();
}

class _Privacy_SecurityState extends State<Privacy_Security> {
  bool _Showmaincontainer = true;
  int _index = 0;
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
           child: Visibility(
        child: _Main_container(),
        visible: true,
      ),),
    );
  }

  _Main_container(){
    bool _showclearconversation = true ;
    bool _showclearsearch = true ;
    return Container(
      color: Colors.black,
      child: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  _index = index;
                });
                _index == 0
                    ? Navigator.push(context, MaterialPageRoute(builder: (context) => _Clear_conversation()))
                    :
                _index ==1
                    ?_ClearSearch_History(context)
                    : _index == 2
                    ?Navigator.push(context, MaterialPageRoute(builder: (context) => _Contact_syncing()))
                    :Navigator.push(context, MaterialPageRoute(builder: (context) => _Permission())) ;
              },
              child: Column(children: [
                Container(
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
                ),
              ],)
            );
          }),
    );
  }

  _Clear_conversation(){
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
      body: ListView.builder(
        itemBuilder: (context , index){
      return Container(
        padding: EdgeInsets.only(left: 25 , right: 25,top: 10 ,bottom: 10),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Image.asset('assets/profile1.png' , height: 40,),
              SizedBox(width: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Manya Sharma' , style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w700 , color: Colors.white),),
                Text('1 Month' , style: GoogleFonts.roboto(fontSize: 12 , fontWeight: FontWeight.w400 , color: Colors.white),),
              ],)
            ],),
            Image.asset('assets/cancle.png' , height: 15,)

        ],),
      );
    }),);
  }

  _ClearSearch_History(BuildContext context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF2F2F2F),
            title: Text('Are you sure you want to Clear your\nsearch history?' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white),),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('YES',style: GoogleFonts.roboto(fontSize: 12 , fontWeight: FontWeight.w400 , color: Color(0xFFFFFFFF)),)),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('NO' , style: GoogleFonts.roboto(fontSize: 12 , fontWeight: FontWeight.w400 , color: Color(0xFFF12D4D)),)),
            ],
          );
        });
  }


  _Contact_syncing(){
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
        child: Padding(padding: EdgeInsets.only(left: 25 ,right: 30 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35,),
            Text('Sync Contacts' , style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w400 , color: Color(0xFF6A6A6A)),),
            SizedBox(height: 12,),
            Text('Give contact permission by tapping add friend in profile.' , style: GoogleFonts.roboto(fontSize: 14 , fontWeight: FontWeight.w400 , color: Color(0xFFFFFFFF)),),
            SizedBox(height: 12,),
            Text('View Contacts' , style: GoogleFonts.roboto(fontSize: 15 , fontWeight: FontWeight.w400 , color: Color(0xFFF12D4D)),),
          ],
        ),)
      ),
    );
  }

  _Permission(){
    bool _isswitch = false;
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
        child:  ListView.builder(
          itemCount: permissiontitle.length,
            itemBuilder: (context,index) {
          return Column(
            children: [
              Container(margin:EdgeInsets.only(left: 30 , right: 15),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(permissiontitle[index] ,style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 14 , color: Colors.white),),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.7,child: Text(permissionsubtitle[index] ,style: GoogleFonts.roboto(fontWeight: FontWeight.w400 , fontSize: 10 , color: Colors.white),),),
                      ],),
                  Switch(
                    value: _isswitch,
                    onChanged: (value) {
                      setState(() {
                        _isswitch = value;
                        print(_isswitch);
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.white,
                    inactiveThumbColor: Color(0xFFF12D4D),
                    inactiveTrackColor: Color(0xFFF12D4D),
                  ),
                ],),),
              Container(height: 0.3, color:Colors.white,)
            ],
          );
        })
      ),
    );
  }
}
