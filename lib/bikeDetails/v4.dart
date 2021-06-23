import 'package:bikerent/dialogbox/bookV4.dart';
import 'package:bikerent/v4details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class V4 extends StatelessWidget {
  const V4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V4DetailsUI(),
    );
  }
}

class V4DetailsUI extends StatefulWidget {
  const V4DetailsUI({Key? key}) : super(key: key);

  @override
  _V4DetailsUIState createState() => _V4DetailsUIState();
}

class _V4DetailsUIState extends State<V4DetailsUI> {
  @override
  Widget build(BuildContext context) {
    final TransformationController _control = TransformationController();
    ThemeData(
      fontFamily: GoogleFonts.montserrat().fontFamily,
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xC0FFFFFF),
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
                        color: Color(0xFFDDDCDC),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(3, 3))
                  ]),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BikeDetails()));
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
                              color: Color(0xFFCCC5DF),
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(3, 3))
                        ]),
                    child: IconButton(
                        onPressed: () {
                          // setState(() {
                          //   isDark = !isDark;
                          // });
                        },
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
                            color: Color(0xFFDDDCDC),
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
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.yellow,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.black,
      //         ),
      //         label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_rounded,
      //           color: Colors.black,
      //         ),
      //         label: "Profile"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.call,
      //           color: Colors.black,
      //         ),
      //         label: "Chat"),
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(Icons.person), label: "Profile"),
      //   ],
      // ),
      body: Container(
        color: Color(0xC0E4E4E4),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Color(0xC0E4E4E4),
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                child: InteractiveViewer(
                    maxScale: 12.0,
                    transformationController: _control,
                    onInteractionEnd: (details) {
                      _control.value = Matrix4.identity();
                    },
                    child: Image.asset("assets/images/v44.png",
                        fit: BoxFit.contain)),
              ),
              Container(
                color: Color(0xC0E4E4E4),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                //child: Image.asset("assets/images/v44.png", fit: BoxFit.cover),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Ducati Panigale V4 R",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Image.asset(
                                "assets/images/star.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: RichText(
                                text: TextSpan(
                                    text: "4.8",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF1215E6)),
                                    children: [
                                      TextSpan(
                                        text: " (50 Reviews)",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF000000)),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 22.0),
                      child: RichText(
                        text: TextSpan(
                            text: "NPR 3000",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1215E6)),
                            children: [
                              TextSpan(
                                text: "/day",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000)),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0xC0E4E4E4),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Specification",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    //  Text("Nabiun"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/engine.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "998 CC",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            // color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/enginecc.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "229 hp",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //  color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/torque.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "112 Nm",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            // color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/type.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "V4 Engine",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //  color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/brake.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "Dual ABS",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //  color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/fuel.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "12 l",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.speed, size: 30),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "299 km/h",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //    color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/mileage.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "7 km/l",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.31,
                            //   color: Color(0xC00026FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/weight.png",
                                  height: 28,
                                  width: 28,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  //   color: Color(0xC051FF00),
                                  child: Center(
                                    child: Text(
                                      "172 kg",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.41,
                width: MediaQuery.of(context).size.width,
                color: Color(0xC0E4E4E4),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 12.0, bottom: 18.0),
                        child: Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: RichText(
                          text: TextSpan(
                              text:
                                  "The Ducati Panigale V4 is a sport bike with a 1,103 cc (67.3 cu in) desmodromic 90° V4 engine introduced by Ducati in 2018 as the successor to the V-twin engined.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF000000)),
                              children: [
                                TextSpan(
                                  text: " Read More",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF000000)),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Hero(
                      tag: "dialog",
                      child: ElevatedButton(
                        onPressed: () {
                          showBookDialogMessage(context);
                        },
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xC00026FF),
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.9,
                              MediaQuery.of(context).size.height * 0.08,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBookDialogMessage(BuildContext context) {
    showDialog(context: context, builder: (context) => BookDialogBox());
  }
}
