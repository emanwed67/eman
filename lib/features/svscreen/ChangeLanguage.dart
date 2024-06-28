import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/ar.dart';
import 'package:tourism_app/features/svscreen/ar_lan.dart';
import 'package:tourism_app/features/svscreen/en.dart';
import 'package:tourism_app/features/svscreen/en_lan.dart';
import 'package:tourism_app/features/svscreen/fa.dart';
import 'package:tourism_app/features/svscreen/fa_lan.dart';

import 'package:tourism_app/features/svscreen/profile.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "     ",
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF6C3428),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Change Language    ',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: fontSize32,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Image.asset(
                'assets/image/photo_6.jpg',
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * .48,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: MediaQuery.of(context).size.height * .1,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "  Change Language ",
                                  style: TextStyle(
                                    color: Color(0xff6C3428),
                                    fontSize: fontSize32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .0001,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .07,
                              width: MediaQuery.of(context).size.width * 1.0,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "  choose your preferred language to\n           continue your adventure. ",
                                  style: TextStyle(
                                    color: Color(0xFFBE8C63),
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),

                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => en_lan()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "English",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: fontSize16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .002,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width * .93,
                                height:
                                    MediaQuery.of(context).size.height * .055,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * .004),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: MediaQuery.of(context).size.width *
                                          .002,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFE4D1B9),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),

                            //

                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ar_lan()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "العربيه",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: fontSize16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .002,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width * 0.92,
                                height:
                                    MediaQuery.of(context).size.height * .055,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * .004),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: MediaQuery.of(context).size.width *
                                          .002,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFE4D1B9),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),

                            //
                            InkWell(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => fa_lan()),
                                );

                                ;
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "French",
                                          style: TextStyle(
                                            color: Color(0xFFBE8C63),
                                            fontSize: fontSize16,
                                            fontFamily: 'intr',
                                            fontWeight: FontWeight.w500,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .002,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text("   "),
                                      ],
                                    ),
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width * 0.92,
                                height:
                                    MediaQuery.of(context).size.height * .055,
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * .004),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: MediaQuery.of(context).size.width *
                                          .002,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFE4D1B9),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            //
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
