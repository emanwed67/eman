import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/ar.dart';
import 'package:tourism_app/features/svscreen/bage2.dart';
import 'package:tourism_app/features/svscreen/en.dart';
import 'package:tourism_app/features/svscreen/fa.dart';

class bage1 extends StatefulWidget {
  @override
  State<bage1> createState() => _bage1State();
}

class _bage1State extends State<bage1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize18 = (screenWidth <= 600) ? 18 : 22;
    return Scaffold(
      //appBar: AppBar(
      //backgroundColor: Colors.white,
      //automaticallyImplyLeading: false,
      // leading: IconButton(
      // onPressed: () {
      //   Navigator.of(context).pop();
      //  },
      // icon: Icon(Icons.arrow_back_ios),
      //  ),
      //),
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/image/photo_3_2024-04-20_15-55-17.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .48,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * .48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.width * 1.0,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "  Language Selection ",
                              style: TextStyle(
                                color: Color(0xff6C3428),
                                fontSize: fontSize32,
                                fontWeight: FontWeight.w600,
                                height:
                                    MediaQuery.of(context).size.height * .001,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.width * 1.0,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "  Choose your preferred language To \n              start your adventure. ",
                              style: TextStyle(
                                color: Color(0xFFBE8C63),
                                fontSize: fontSize18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => en()),
                            );

                            ;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "English",
                                      style: TextStyle(
                                        color: Color(0xFFBE8C63),
                                        fontSize: fontSize18,
                                        fontFamily: 'intr',
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .002,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    Text("   "),
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: MediaQuery.of(context).size.height * .055,
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * .004,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width:
                                      MediaQuery.of(context).size.width * 0.002,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFE4D1B9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),
                        InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ar()),
                            );

                            ;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "العربيه",
                                      style: TextStyle(
                                        color: Color(0xFFBE8C63),
                                        fontSize: fontSize18,
                                        fontFamily: 'intr',
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .002,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    Text("   "),
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: MediaQuery.of(context).size.height * .055,
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * .004,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width:
                                      MediaQuery.of(context).size.width * 0.002,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFE4D1B9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .025,
                        ),

                        //
                        InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => fa()),
                            );

                            ;
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "French",
                                      style: TextStyle(
                                        color: Color(0xFFBE8C63),
                                        fontSize: fontSize18,
                                        fontFamily: 'intr',
                                        fontWeight: FontWeight.w500,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .002,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    Text("   "),
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: MediaQuery.of(context).size.height * .055,
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * .004,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width:
                                      MediaQuery.of(context).size.width * 0.002,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFE4D1B9),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}
