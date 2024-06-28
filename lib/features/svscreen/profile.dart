import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:tourism_app/features/home/notivigation/notifigation.dart';
import 'package:tourism_app/features/home/presentation/favourite/favourite.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/search/search.dart';
import 'package:tourism_app/features/svscreen/ChangeLanguage.dart';
import 'package:tourism_app/features/svscreen/edetprofile.dart';
import 'package:tourism_app/features/svscreen/signin.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    final GlobalKey<ScaffoldState> key = GlobalKey();

    return Scaffold(
      key: key,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .030),
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
                                " ",
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
                      ' Profile    ',
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
                height: MediaQuery.of(context).size.height * .05,
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/image/Ellipse 93.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .016,
              ),
              Text(
                ' Gamila_hesham',
                style: TextStyle(
                  fontSize: fontSize24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C3428),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .016),
              InkWell(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => edetprofile()),
                  );

                  ;
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.height * .172,
                    height: MediaQuery.of(context).size.height * .051,
                    decoration: BoxDecoration(
                      color: Color(0xFFBE8C63),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text("   "),
                            Icon(
                              Icons.edit,
                              color: Color(0xffE4D1B9),
                            ),
                            Text(
                              "   Edit Profile",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffE4D1B9),
                                fontSize:
                                    MediaQuery.of(context).size.height * .019,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .051,
              ),
              _settingItem(
                title: 'Notification',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifica()));
                },
              ),
              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .010),
              _settingItem(
                title: 'Language',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangeLanguage()));
                },
              ),
              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              _settingItem(
                title: 'Favourite',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
              ),
              Image.asset(
                'assets/image/Line 9.png',
              ),
              _settingItem(
                title: 'Help',
                onTap: () {
                  // Navigator.push( context, MaterialPageRoute( builder: (context) => PharaonicVillage()));
                },
              ),
              Image.asset(
                'assets/image/Line 9.png',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .010),
              //
              MaterialButton(
                onPressed: () {
                  AwesomeDialog(
                    width: MediaQuery.of(context).size.height * 1.0,
                    bodyHeaderDistance: 32,
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.rightSlide,
                    title: 'Are You Sure You Want To Log Out?',
                    titleTextStyle: TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: fontSize16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnCancelOnPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    btnCancelColor: Colors.white,
                    buttonsTextStyle: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: fontSize16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnOkOnPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
                    },
                    btnOkText: ("     Log Out"),
                    btnOkColor: Color(0xff6C3428),
                  )..show();
                },
                child: Row(
                  children: [
                    Text(
                      "Log Out",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: fontSize16,
                        fontFamily: 'intr',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: Color(
            0xff6C3428,
          ),
          child: Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(
              0xffE4D1B9,
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Color(0xff6c3428),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Favourite()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffBE8C63),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _settingItem({
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
  }) {
    return Container(
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        textColor: Color(0xFFBE8C63),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xFFBE8C63),
        ),
      ),
    );
  }
}
