import 'package:bikerent/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ZX10RDetails extends StatelessWidget {
  const ZX10RDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZX10RDetailsUI(),
    );
  }
}

class ZX10RDetailsUI extends StatefulWidget {
  const ZX10RDetailsUI({Key? key}) : super(key: key);

  @override
  _ZX10RDetailsUIState createState() => _ZX10RDetailsUIState();
}

class _ZX10RDetailsUIState extends State<ZX10RDetailsUI> {
  CarouselController buttonCarouselController = CarouselController();

  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              // borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                        child: Text(
                          "12 Months",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
                        child: RichText(
                          text: TextSpan(
                              text: "NPR 6500",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              children: [
                                TextSpan(
                                  text: " (Per Month)",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Per Month",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF4400FF),
                        minimumSize: Size(120, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                  ),
                )
              ],
            ),
          );
        });
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    // final List<String> imageList = [
    //   "assets/images/v44.png",
    //   "assets/images/v42.png",
    //   "assets/images/v43.png",
    //   "assets/images/v44.png",
    // ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Color(0xC0FFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFE9E9E9),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(3, 3))
                    ]),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          color: Color(0xFF4400FF),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFC9C1E0),
                                spreadRadius: 3,
                                blurRadius: 8,
                                offset: Offset(3, 3))
                          ]),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.label,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Color(0xC0FFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFE9E9E9),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(3, 3))
                        ]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.black,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xC0E4E4E4),
              // ]
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "ZX 10 R",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Kawasaki",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.42,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xC0E4E4E4),
                    child: CarouselSlider(
                        items: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width,
                              child: Hero(
                                tag: "v9",
                                child: Image.asset(
                                  "assets/images/10r.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 10, // blur radius
                                    offset: Offset(
                                        -6, -6), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                  BoxShadow(
                                    color: Color(0xFF868484)
                                        .withOpacity(0.3), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 10, // blur radius
                                    offset: Offset(
                                        6, 6), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                          .withOpacity(0.2), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          -6, -6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                    BoxShadow(
                                      color: Color(0xFF868484)
                                          .withOpacity(0.3), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          6, 6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                  ],
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/yamahar1.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                          .withOpacity(0.2), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          -6, -6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                    BoxShadow(
                                      color: Color(0xFF868484)
                                          .withOpacity(0.3), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          6, 6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                  ],
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/v42.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                          .withOpacity(0.2), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          -6, -6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                    BoxShadow(
                                      color: Color(0xFF868484)
                                          .withOpacity(0.3), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 10, // blur radius
                                      offset: Offset(
                                          6, 6), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                  ],
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/v41.jpg"),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                        ],
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.76,
                          height: 500,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          autoPlay: false,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 1.0),
                        child: Text(
                          "Choose Your Plan",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color(0xC0000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.height,
                    color: Color(0xC0E4E4E4),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              _showModalBottomSheet(context);
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: AnimatedContainer(
                                duration: Duration(milliseconds: 250),
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                width:
                                    MediaQuery.of(context).size.height * 0.17,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFFFFFFF)
                                          .withOpacity(0.2), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 12, // blur radius
                                      offset: Offset(
                                          -2, -2), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                    BoxShadow(
                                      color: Color(0xFF302575)
                                          .withOpacity(0.3), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 12, // blur radius
                                      offset: Offset(
                                          5, 9), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                  ], //,
                                  color: isSelected
                                      ? Color(0xFF8865E7)
                                      : Color(0xFF4400FF),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14.0, top: 15.0),
                                        child: Text(
                                          "12 Month",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 20.0),
                                        child: Text(
                                          "6500",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 1.0),
                                        child: Text(
                                          "NPR",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.height * 0.17,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFFFFFFF)
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        -2, -2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                  BoxShadow(
                                    color: Color(0xFF302575)
                                        .withOpacity(0.3), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        5, 5), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: Color(0xFF4400FF),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14.0, top: 15.0),
                                      child: Text(
                                        "9 Month",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 20.0),
                                      child: Text(
                                        "7000",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 1.0),
                                      child: Text(
                                        "NPR",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.height * 0.17,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFFFFFFF)
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        -2, -2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                  BoxShadow(
                                    color: Color(0xFF302575)
                                        .withOpacity(0.3), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        5, 5), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: Color(0xFF4400FF),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14.0, top: 15.0),
                                      child: Text(
                                        "6 Month",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 20.0),
                                      child: Text(
                                        "9000",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 1.0),
                                      child: Text(
                                        "NPR",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.height * 0.17,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFFFFFFF)
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        -2, -2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                  BoxShadow(
                                    color: Color(0xFF302575)
                                        .withOpacity(0.3), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 12, // blur radius
                                    offset: Offset(
                                        5, 5), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: Color(0xFF4400FF),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14.0, top: 15.0),
                                      child: Text(
                                        "3 Month",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 20.0),
                                      child: Text(
                                        "12000",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, top: 1.0),
                                      child: Text(
                                        "NPR",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
//====================================================================================
                  Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xC0E4E4E4),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 1.0),
                                  child: Text(
                                    "Specification",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 1.0, right: 10.0),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        "More >>",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF071CDA)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18.0, bottom: 18.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Colors",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "Red,Dark Blue",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Type",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "Sports",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Mileage",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "9 km/l",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Cylinder No",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "4",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Engine CC",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "998 CC",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Power",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "200 hp",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Torque",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "125 Nm",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFFFFFFFF), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(-2,
                                                  -2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF555454)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius
                                              offset: Offset(5,
                                                  5), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                          color: Color(0xffFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 10.0),
                                                child: Text(
                                                  "Dry Weight",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, bottom: 10.0),
                                                child: Text(
                                                  "200 kg",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
