import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1F1F),
        title: Text(
          'Withdraw',
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30),
        color: Color(0xFF0E0E0E),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Details',
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              'Account No - xxxx-xxxx-xxxx-1032',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              'IFSC Code - HDFC12054',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  'Rs 3,999.00',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:40,width: 110,child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFFC4C4C4)),
                  onPressed: (){
                  },
                  child: Text('Add Account' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 12 , color: Colors.black),)),),
                SizedBox(width: 50,),
                SizedBox(height:40,width: 110,child:ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFF12D4D)),
                    onPressed: (){
                      _DilogBox(context);
                    },
                    child: Text('Withdraw' , style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 12 , color: Color(0xFF000000)),))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _DilogBox(BuildContext context){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Color(0xFF1E1E1E),
            child: Container(
              margin: EdgeInsets.only(bottom: 20 ,right: 10 ,top: 10),
              height: 129,
              width: 200,
              child: Column(
              children: [
                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,children: [Container() , Icon(Icons.cancel , color: Colors.white,),],),

                SizedBox(height:40,width: 110,child:ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFF12D4D)),
                    onPressed: (){
                    },
                    child: Text('Partial Fund' , style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 12 , color: Color(0xFFFFFFFF)),))),
                   SizedBox(height: 15,),

                SizedBox(height:40,width: 110,child:ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFF12D4D)),
                    onPressed: (){
                    },
                    child: Text('All Fund' , style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 12 , color: Color(0xFFFFFFFF)),))),

              ],),)
          );
        });
  }
}
