import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybranz/screens/invite/invite.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  List imgs = [
    "assets/images/Shoes.svg",
    "assets/images/Accessory.svg",
    "assets/images/Handbag.svg",
    "assets/images/skincare.svg",
    "assets/images/Apparel.svg",
    "assets/images/Jewellery.svg",
  ];
  List names = [
    "Shoes",
    "Accessory",
    "Hand bag",
    "Skin care",
    "Apparel",
    "Jewellery",
  ];

  List brands = [
    "assets/images/gucci.png",
    "assets/images/can.png",
    "assets/images/dior.png",
    "assets/images/bal.png",
    "assets/images/dol.png",
    "assets/images/sup.png",
  ];

  @override
  Widget build(BuildContext context) {
    bool isSelect = false;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 40,
              child: Column(
                children: [
                  Expanded(
                    flex: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What are you looking for?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 80,
                    child: GridView.builder(
                      itemCount: imgs.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 4
                            : 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 15,
                        childAspectRatio: (5 / 4),
                      ),
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pushNamed(RouteName.GridViewCustom);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff1E1E1E).withOpacity(0.63),
                              ),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: SvgPicture.asset(
                                        imgs[index],
                                        height: 38,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        names[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 18, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 60,
              child: Column(
                children: [
                  Expanded(
                    flex: 15,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Brands",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 60,
                    child: GridView.builder(
                      itemCount: brands.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 4
                            : 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 15,
                        childAspectRatio: (5 / 4),
                      ),
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pushNamed(RouteName.GridViewCustom);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff1E1E1E).withOpacity(0.63),
                              ),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child: Image.asset(
                                        brands[index],
                                        height: 80,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 25,
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
                          padding: const EdgeInsets.only(bottom: 30, top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF12D4D),
                            ),
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                "Submit",
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
