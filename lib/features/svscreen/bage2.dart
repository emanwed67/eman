import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/features/svscreen/bage3.dart';
import 'package:tourism_app/generated/l10n.dart';

class bage2 extends StatefulWidget {
  const bage2({super.key});

  @override
  State<bage2> createState() => _bage2State();
}

class _bage2State extends State<bage2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 32;
    double fontSize16 = (screenWidth <= 600) ? 16 : 14;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/image/photo_9_2024-04-20_15-55-17.jpg"))),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * .66,
            ),
            Row(
              children: [
                Text(
                  S.of(context).title,
                  style: TextStyle(
                    color: Color(0xFFE4D1B9),
                    fontSize: fontSize24,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: MediaQuery.of(context).size.height * .002,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 16, left: 16, bottom: 0),
              child: Text(
                S.of(context).text,
                style: TextStyle(
                  color: Color(0xFFE4D1B9),
                  fontSize: fontSize16,
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bage3()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    S.of(context).next,
                    style: TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: fontSize24,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: MediaQuery.of(context).size.height * .0015,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text("      "),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .087,
            ),
          ]),
        ),
      ),
    );
  }
}
