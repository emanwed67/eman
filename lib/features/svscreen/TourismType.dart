import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';

class TourismType extends StatefulWidget {
  const TourismType({super.key});

  @override
  State<TourismType> createState() => _TourismTypeState();
}

class _TourismTypeState extends State<TourismType> {
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
                                "   ",
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF6C3428),
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      ' Tourism Type    ',
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
                height: MediaQuery.of(context).size.height * .03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coastal()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,

                  child: Image.asset("assets/image/Rectangle 335.png"),

                  //_LoginscreenState
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '  Coastal Tourism    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize24,
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
                    'Lorem ipsum dolor sitametconsecteturadipiscing \nElit, sed do eiusmod tempor incididunt utlabore \nEt dolore magna aliqua. Ut enim ad minim \nveniam bhjgdhfdjhbanasvdjhdD .',
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
              //2
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coastal()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,

                  child: Image.asset("assets/image/Rectangle 3350.png"),

                  //_LoginscreenState
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '  Religious Tourism    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize24,
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
                    'Lorem ipsum dolor sitametconsecteturadipiscing \nElit, sed do eiusmod tempor incididunt utlabore \nEt dolore magna aliqua. Ut enim ad minim \nveniam bhjgdhfdjhbanasvdjhdD .',
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
              //3
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coastal()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,

                  child: Image.asset("assets/image/Rectangle 337.png"),

                  //_LoginscreenState
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '  Medical Tourism    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize24,
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
                    'Lorem ipsum dolor sitametconsecteturadipiscing \nElit, sed do eiusmod tempor incididunt utlabore \nEt dolore magna aliqua. Ut enim ad minim \nveniam bhjgdhfdjhbanasvdjhdD .',
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
              //4
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Coastal()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,

                  child: Image.asset("assets/image/Rectangle 338.png"),

                  //_LoginscreenState
                ),
              ),
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  '  Archaeological Tourism    ',
                  style: TextStyle(
                    color: Color(0xFF6C3428),
                    fontSize: fontSize24,
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
                    'Lorem ipsum dolor sitametconsecteturadipiscing \nElit, sed do eiusmod tempor incididunt utlabore \nEt dolore magna aliqua. Ut enim ad minim \nveniam bhjgdhfdjhbanasvdjhdD .',
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
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
