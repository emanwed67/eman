import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/home/presentation/quick_servay/quick_survey%201.dart';
import 'package:tourism_app/features/home/presentation/quick_servay/quick_survey%202.dart';
import 'package:tourism_app/features/svscreen/signin.dart';

class bage6 extends StatefulWidget {
  @override
  State<bage6> createState() => _bage6State();
}

class _bage6State extends State<bage6> {
  bool status1 = false;
  bool status2 = false;
  //الصفحه الى فبل اللجن ال yes ,no

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .07),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signin()),
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
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '  Quick Survey    ',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: fontSize24,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500,
                        height: MediaQuery.of(context).size.height * .002,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Image.asset(
                'assets/image/photo_35.png',
                width: MediaQuery.of(context).size.height * .380,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              //
              Row(
                children: [
                  Text(
                    "  Did You Visit Egypt Before ?",
                    style: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: fontSize24,
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height * .0017,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * .032,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuickPage1(yesOrNoe: true,)),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Yes",
                            style: TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: fontSize24,
                              fontWeight: FontWeight.w500,
                              height:
                                  MediaQuery.of(context).size.height * .0017,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuickPage1(yesOrNoe: false,)),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "No",
                            style: TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: fontSize24,
                              fontWeight: FontWeight.w500,
                              height:
                                  MediaQuery.of(context).size.height * .0017,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .955,
                height: MediaQuery.of(context).size.height * .150,
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: MediaQuery.of(context).size.width * .002,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE4D1B9),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .024,
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
