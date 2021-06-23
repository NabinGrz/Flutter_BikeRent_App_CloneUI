import 'package:bikerent/availablebikes.dart';
import 'package:bikerent/cbrdetails.dart';
import 'package:bikerent/gsxrdetails.dart';
import 'package:bikerent/hayabusadetails.dart';
import 'package:bikerent/r1details.dart';
import 'package:bikerent/rsv4details.dart';
import 'package:bikerent/s1000rrdetails.dart';
import 'package:bikerent/v4details.dart';
import 'package:bikerent/zx10rdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: MyAppUI(),
    );
  }
}

class MyAppUI extends StatefulWidget {
  const MyAppUI({Key? key}) : super(key: key);

  @override
  _MyAppUIState createState() => _MyAppUIState();
}

class _MyAppUIState extends State<MyAppUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bike Rent App",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                    size: 30,
                  ))
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 8.0, bottom: 20.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xC0E4E4E4),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xC0D6D6D6)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xC0D6D6D6)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 32,
                        ),
                        hintText: "Search Bike",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xC0E4E4E4),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 15),
                              child: Text(
                                "Top Deals",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF1B1B1B)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                            Duration(milliseconds: 500),
                                        pageBuilder: (context, animation,
                                            secondAnimation) {
                                          return AvailableBikes();
                                        },
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return Material(
                                            elevation: 12,
                                            child: SlideTransition(
                                              position: animation.drive(Tween(
                                                      begin: Offset(1, 0),
                                                      end: Offset(0, 0))
                                                  .chain(CurveTween(
                                                      curve: Curves
                                                          .easeOutCubic))),
                                              child: ScaleTransition(
                                                scale: animation,
                                                child: child,
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                },
                                child: Text(
                                  "View All >",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF4400FF)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================TOP DEALS===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                        Container(
                          height: MediaQuery.of(context).size.height * 0.43,
                          width: MediaQuery.of(context).size.width,
                          // color: Color(0xC0E70303),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
//=====================================================================================================
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return BikeDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Hero(
                                      tag: "v4",
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.38,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.56,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white.withOpacity(
                                                  0.2), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 10, // blur radius
                                              offset: Offset(-6,
                                                  -6), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            BoxShadow(
                                              color: Color(0xFF868484)
                                                  .withOpacity(
                                                      0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 10, // blur radius
                                              offset: Offset(6,
                                                  6), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25)),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.04,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.22,
                                                    color: Color(0xFF4400FF),
                                                    child: Center(
                                                        child: Text(
                                                      "Daily",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.174,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                // color: Colors.amber,
                                                child: Center(
                                                  child: Image.asset(
                                                    "assets/images/v44.png",
                                                    fit: BoxFit.contain,
                                                    // scale: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25)),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.12,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                    //    color: Color(0xC0FFFB0E),
                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 8.0,
                                                              top: 4.0,
                                                            ),
                                                            child: Text(
                                                              "Panigale V4 R",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w200),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 8.0,
                                                              top: 2.0,
                                                            ),
                                                            child: Text(
                                                              "Ducatti",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8.0,
                                                                    bottom:
                                                                        2.0),
                                                            child: Text(
                                                              "Per Day",
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================1===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                SizedBox(
                                  width: 20,
                                ),
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return HayabusaDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              // color: Colors.amber,
                                              child: Hero(
                                                tag: "v6",
                                                child: Image.asset(
                                                  "assets/images/hayabusa2.png",
                                                  fit: BoxFit.contain,
                                                  scale: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "Hayabusa",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Suzuki",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================2===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                SizedBox(
                                  width: 20,
                                ),
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return CBRDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              // color: Colors.amber,
                                              child: Hero(
                                                tag: "v7",
                                                child: Image.asset(
                                                  "assets/images/cbr2.png",
                                                  // fit: BoxFit.fill,
                                                  scale: 1.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "Fireblade",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Honda",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================3===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return R1Details();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              //color: Colors.amber,
                                              child: Hero(
                                                tag: "v8",
                                                child: Image.asset(
                                                  "assets/images/yamahar1.png",
                                                  fit: BoxFit.contain,
                                                  //
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "YZF R1",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Yamaha",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 20,
                                ),
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return ZX10RDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              //color: Colors.amber,
                                              child: Hero(
                                                tag: "v9",
                                                child: Image.asset(
                                                    "assets/images/10r.png",
                                                    fit: BoxFit.contain
                                                    // height: 100,
                                                    // width: 150,
                                                    // scale: 1.2,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "ZX 10RR",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Kawasaki",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================1===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                SizedBox(
                                  width: 20,
                                ),
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return S1000RRDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              //color: Colors.amber,
                                              child: Hero(
                                                tag: "v10",
                                                child: Image.asset(
                                                  "assets/images/bmw.png",
                                                  fit: BoxFit.contain,
                                                  // scale: 1.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "S1000 RR",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "BMW",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================2===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                SizedBox(
                                  width: 20,
                                ),
                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GSXRDetails();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              // color: Colors.amber,
                                              child: Hero(
                                                tag: "v11",
                                                child: Image.asset(
                                                  "assets/images/gsxr.png",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "GSXR 1000 RR",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Suzuki",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//==========================================3===========================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================

                                Material(
                                  // shape: RoundedRectangleBorder(),
                                  // // type: MaterialType.circle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    highlightColor: Color(0xFF6B6565),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return RSV4Details();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.56,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(
                                                0.2), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(-6,
                                                -6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                          BoxShadow(
                                            color: Color(0xFF868484)
                                                .withOpacity(
                                                    0.3), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 10, // blur radius
                                            offset: Offset(6,
                                                6), // changes position of shadow
                                            //first paramerter of offset is left-right
                                            //second parameter is top to down
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.22,
                                                  color: Color(0xFF4400FF),
                                                  child: Center(
                                                      child: Text(
                                                    "Daily",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.174,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              // color: Colors.amber,
                                              child: Hero(
                                                tag: "v12",
                                                child: Image.asset(
                                                  "assets/images/rsv4.png",
                                                  fit: BoxFit.contain,
                                                  // height: 300,
                                                  // width: 200,
                                                  // scale: 1.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // color: Color(0xC0FFFB0E),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 4.0,
                                                          ),
                                                          child: Text(
                                                            "RSV4 Factory",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 8.0,
                                                            top: 2.0,
                                                          ),
                                                          child: Text(
                                                            "Aprilia",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0,
                                                                  bottom: 2.0),
                                                          child: Text(
                                                            "Per Day",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Color(0xFF4400FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Available Bikes",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Great Power and Thrust",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    color: Color(0xFFFFFFFF),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                              transitionDuration:
                                                  Duration(milliseconds: 500),
                                              pageBuilder: (context, animation,
                                                  secondAnimation) {
                                                return AvailableBikes();
                                              },
                                              transitionsBuilder: (context,
                                                  animation,
                                                  secondaryAnimation,
                                                  child) {
                                                return Material(
                                                  elevation: 12,
                                                  child: SlideTransition(
                                                    position: animation.drive(Tween(
                                                            begin: Offset(1, 0),
                                                            end: Offset(0, 0))
                                                        .chain(CurveTween(
                                                            curve: Curves
                                                                .easeOutCubic))),
                                                    child: ScaleTransition(
                                                      scale: animation,
                                                      child: child,
                                                    ),
                                                  ),
                                                );
                                              }),
                                        );
                                      },
                                      icon: Icon(
                                        CupertinoIcons.arrow_right,
                                        size: 33,
                                        color: Color(0xFF4400FF),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 15),
                              child: Text(
                                "Top Dealers",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF1B1B1B)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                            Duration(milliseconds: 500),
                                        pageBuilder: (context, animation,
                                            secondAnimation) {
                                          return AvailableBikes();
                                        },
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return Material(
                                            elevation: 12,
                                            child: SlideTransition(
                                              position: animation.drive(Tween(
                                                      begin: Offset(1, 0),
                                                      end: Offset(0, 0))
                                                  .chain(CurveTween(
                                                      curve: Curves
                                                          .easeOutCubic))),
                                              child: ScaleTransition(
                                                scale: animation,
                                                child: child,
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                },
                                child: Text(
                                  "View All >",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF4400FF)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              // color: Color(0xFFFA0909),
                              ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/ducatilogo.png",
                                          height: 80,
                                          width: 200,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "Ducatti",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
//==============================================================================================
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/suzukilogo.png",
                                          height: 80,
                                          width: 200,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "Suzuki",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
//===========================================================================================================
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/hondalogo.png",
                                          height: 80,
                                          width: 200,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "Honda",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
//==============================================================================================================================
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/yamahalogo.png",
                                          height: 80,
                                          width: 200,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "Yamaha",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
//============================================================================================================================
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/bmwlogo.png",
                                          height: 80,
                                          width: 500,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "BMW",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.21,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Color(0xC0FFFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 10, // blur radius
                                        offset: Offset(-6,
                                            -6), // changes position of shadow
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Image.asset(
                                          "assets/images/aprilialogo.png",
                                          height: 80,
                                          width: 140,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8.0,
                                                top: 2.0,
                                              ),
                                              child: Text(
                                                "Aprilia",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, bottom: 10.0),
                                              child: Text(
                                                "3 Bikes",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          )
                                        ],
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
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
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
