import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/features/home/presentation/password_view/forget_pass.dart';
import 'package:tourism_app/features/svscreen/bage6.dart';
import 'package:tourism_app/features/svscreen/signup.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool ispassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * .15,
                          child: Text(
                            '  Log Into \n  Your Account..',
                            style: TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: 32,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .040,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .15,
                  child: Image.asset("assets/image/bro.png"),

                  //_LoginscreenState
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .030,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 24, left: 24, bottom: 0),
                  child: TextFormField(
                    controller: emailcontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || !value.contains('@')) {
                        return 'Enter valid Email';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFFBE8C63),
                        size: 20,
                      ),
                      label: Text(
                        'E-Mail',
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: MediaQuery.of(context).size.height * .00009,
                        ),
                      ),
                      // border: OutlineInputBorder()
                    ),
                  ),
                ),

                // bottom password
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 24, left: 24, bottom: 0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordcontroller,
                    obscureText: ispassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return 'Enter valid password';
                      }
                    },
                    decoration: InputDecoration(
                      label: Text(
                        ' password',
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: MediaQuery.of(context).size.height * .0009,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFFBE8C63),
                        size: 20,
                      ),
                      suffixIcon: ispassword
                          ? IconButton(
                              icon: Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            )
                          : IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              },
                            ),
                      //border: OutlineInputBorder()
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height * .015,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPass()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Color(0xFFBE8C63),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: MediaQuery.of(context).size.height * .002,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text("    ")
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),

                InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bage6()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .055,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Color(0xFFBE8C63),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE4D1B9),
                            fontSize: 16,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("     "),
                    Image.asset(
                      "assets/image/Line 2.png",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * .009,
                    ),
                    Row(
                      children: [
                        Text(" Login With  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBE8C63),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Image.asset(
                      "assets/image/Line 2.png",
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * .009,
                    )
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [],
                    ),
                    Image.asset(
                      "assets/image/Group 3.png",
                      width: MediaQuery.of(context).size.width * 0.150,
                      height: MediaQuery.of(context).size.height * .065,
                    ),
                    Image.asset(
                      "assets/image/Group 5.png",
                      width: MediaQuery.of(context).size.width * 0.150,
                      height: MediaQuery.of(context).size.height * .065,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'you don’t have account?',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        "   sign up",
                        style: TextStyle(
                          color: Color(0xff6C3428),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
