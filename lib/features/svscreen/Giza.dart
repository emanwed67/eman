import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/PharaonicVillage.dart';

import '../home/presentation/home_model.dart';

class Giza extends StatefulWidget {
  const Giza({super.key, required this.data, required this.img});
final Datum data;
  final String img;
  @override
  State<Giza> createState() => _GizaState();
}

class _GizaState extends State<Giza> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 24;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        child: Image.asset(
                         widget.img,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home_Screen()),(route) => false,);
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
                      ),
                    ])
                  ],
                ),
              ),
              //

              Container(
                height: MediaQuery.of(context).size.height * 1.15,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .05,
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 15.sp),
                            child: Text(
                              widget.data.name??'',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF6C3428),
                                fontSize: fontSize24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .005,
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height * .4,
                          width: MediaQuery.of(context).size.width * 1.0,
                          color: Colors.white,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16, right: 16, left: 16, bottom: 16),
                              child: Text(
                                widget.data.description??'',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFFBE8C63),
                                  fontSize: fontSize16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height * .045,
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Text(
                            '   popular places:     ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF6C3428),
                              fontSize: fontSize24,
                              fontWeight: FontWeight.w500,
                              height:
                                  MediaQuery.of(context).size.height * .0015,
                            ),
                          ),
                        ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PharaonicVillage(id: 6,image: 'assets/image/Group 11594.png' ,)),
                                  );
                                },

                                child: Image.asset(
                                  'assets/image/Group 11594.png',
                                  height: MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width * .45,
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PharaonicVillage(id: 5,image:'assets/image/Group 11595.png' ,)),
                                  );
                                },

                                child: Image.asset(
                                  'assets/image/Group 11595.png',
                                  height: MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width * .45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PharaonicVillage(id: 8,image:'assets/image/Group 11596.png' ,)),
                                  );
                                },

                                child: Image.asset(
                                  'assets/image/Group 11596.png',
                                  height: MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width * .45,
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PharaonicVillage(id:7 ,image:'assets/image/Group 11597.png' ,)),
                                  );
                                },

                                child: Image.asset(
                                  'assets/image/Group 11597.png',
                                  height: MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width * .45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .032),
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
