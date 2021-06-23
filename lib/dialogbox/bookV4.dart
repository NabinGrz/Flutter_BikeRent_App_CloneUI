import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDialogBox extends StatefulWidget {
  const BookDialogBox({Key? key}) : super(key: key);

  @override
  _BookDialogBoxState createState() => _BookDialogBoxState();
}

class _BookDialogBoxState extends State<BookDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "dialog",
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 22.0),
                    child: Text(
                      "Success",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, top: 8.0, bottom: 22.0),
                    child: Image.asset(
                      "assets/images/tick.png",
                      height: 25,
                      width: 25,
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 6.0),
                  child: Text(
                    "Dear Customer, your bike(Panigale V4 R) has been booked successfully. We will see you soon.",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xC00026FF),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
