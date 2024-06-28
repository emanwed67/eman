import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/bage5.dart';
import 'package:tourism_app/generated/l10n.dart';

class bage4 extends StatefulWidget {
  const bage4({super.key});

  @override
  State<bage4> createState() => _bage4State();
}

class _bage4State extends State<bage4> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "assets/image/photo_2_2024-04-20_15-55-17.jpg"))),
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
                  MaterialPageRoute(builder: (context) => bage5()),
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
              height: MediaQuery.of(context).size.height * .087,
            ),
          ]),
        ),
      ),
    );
  }
}
