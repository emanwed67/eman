import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/search/search.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import '../../../svscreen/PharaonicVillage.dart';
import '../../scan/scan_design.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: InkWell(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff6C3428),
              size: 24,
            ),
            onTap: () {
              Navigator.of(context).pop();
            }),
        elevation: 0,
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Favourite',
            style: TextStyle(
              color: Color(0xff6C3428),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                if(fav1)
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
                if(fav2)
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
                if(fav3)
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
                if(fav4)
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
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(24.0),
            //     child: GridView.count(
            //       physics: const BouncingScrollPhysics(),
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 20.h,
            //       crossAxisSpacing: 20.w,
            //       childAspectRatio: 188.w / 188.h,
            //       children: List.generate(
            //         2,
            //         (index) =>
            //             Stack(alignment: Alignment.bottomCenter, children: [
            //           Image.asset(
            //             'assets/image/streo.png',
            //             // width: 188.w,
            //           ),
            //           Container(
            //             height: 45.h,
            //             width: 170.w,
            //             alignment: Alignment.center,
            //             decoration: BoxDecoration(
            //               color: const Color(0xff6C3428).withOpacity(.6),
            //               borderRadius: BorderRadius.only(
            //                   bottomRight: Radius.circular(20.r),
            //                   bottomLeft: Radius.circular(20.r)),
            //             ),
            //             child: Text(
            //               'streo restaurant',
            //               style: TextStyle(
            //                   fontSize: 16.sp, color: const Color(0xffE4D1B9)),
            //             ),
            //           ),
            //         ]),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: const Color(
            0xff6C3428,
          ),
          child: const Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(
              0xffE4D1B9,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScanDesign()),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
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
                              builder: (context) => const Home_Screen()));
                    },
                    child: const Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Favourite()));
                    },
                    child: const Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()));
                    },
                    child: const Column(
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
                              builder: (context) => const ProfileScreen()));
                    },
                    child: const Column(
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
}
