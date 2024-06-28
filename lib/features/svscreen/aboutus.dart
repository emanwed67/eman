import 'package:flutter/material.dart';
import 'package:tourism_app/features/home/presentation/drawer.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen()),
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
                      'About Us    ',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: fontSize24,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '   Lorem Ipsum Dolor Sit Amet:    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize16,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: MediaQuery.of(context).size.height * .002,
                  ),
                ),
              ),
              //

              //
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 16),
                child: Container(
                  child: Text(
                    'Consectetur adipiscing elit, sed do eiusmod \nTempor incididunt ut labore et dolore magna \nAliqua. Ut enim ad minim veniam. \nLorem ipsum dolor sit amet, consectetur \nAdipiscing elit, sed do eiusmod tempor incididunt \nUt labore et dolore magna aliqua. Ut enim Ad \nminim veniam.Lorem ipsum dolor sit amet.',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),

              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '   Lorem Ipsum Dolor Sit Amet:    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize16,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: MediaQuery.of(context).size.height * .002,
                  ),
                ),
              ),
              //

              //
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 16),
                child: Container(
                  child: Text(
                    'Consectetur adipiscing elit, sed do eiusmod \nTempor incididunt ut labore et dolore magna \nAliqua. Ut enim ad minim veniam. \nLorem ipsum dolor sit amet, consectetur \nAdipiscing elit, sed do eiusmod tempor incididunt \nUt labore et dolore magna aliqua. Ut enim Ad \nminim veniam.Lorem ipsum dolor sit amet.',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '   Lorem Ipsum Dolor Sit Amet:    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize16,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: MediaQuery.of(context).size.height * .002,
                  ),
                ),
              ),
              //

              //
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 16, left: 16, bottom: 16),
                child: Container(
                  child: Text(
                    'Consectetur adipiscing elit, sed do eiusmod \nTempor incididunt ut labore et dolore magna \nAliqua. Ut enim ad minim veniam. \nLorem ipsum dolor sit amet, consectetur \nAdipiscing elit, sed do eiusmod tempor incididunt \nUt labore et dolore magna aliqua. Ut enim Ad \nminim veniam.Lorem ipsum dolor sit amet.',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      height: MediaQuery.of(context).size.height * .002,
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
