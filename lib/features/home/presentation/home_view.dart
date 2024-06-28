import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/favourite/favourite.dart';
import 'package:tourism_app/features/home/presentation/quick_servay/quick_survey%201.dart';
import 'package:tourism_app/features/home/presentation/trip_info/trip_info.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
import 'package:tourism_app/features/svscreen/Giza.dart';
import 'package:tourism_app/features/svscreen/PharaonicVillage.dart';
import 'package:tourism_app/features/svscreen/profile.dart';

import '../../search/search.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import '../scan/scan_design.dart';
import 'drawer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

var mainColor = const Color(0xff6C3428);
final GlobalKey<ScaffoldState> key = GlobalKey();

class _Home_ScreenState extends State<Home_Screen> {
  int currentIndex = 0;

  List imgList = [
    'assets/image/aswan.png',
    'assets/image/giza.png',
    'assets/image/hurghada.png',
    'assets/image/luxor.jpg',
    'assets/image/siwa.png',
  ];

  List photo1 = [
    'assets/image/cleopatra Bath.png',
    'assets/image/salt cave.png'

  ];
  List photo2 = [
    'assets/image/taba10%.png',
    'assets/image/luxoraswan.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "KEMET",
                  style: TextStyle(
                      fontSize: 32,
                      color: mainColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BlocProvider(
                    create: (context) =>
                    HomeCubit()
                      ..getAllCountry()..getAiFunc(tourism:gg),
                    child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                          return state is HomeLoadingState
                              ? Center(
                              child: CircularProgressIndicator(
                                color: mainColor,
                              ))
                              : state is HomeSuccessState ? SizedBox(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, bottom: 20),
                                  child: Text(
                                    'Choose City You Need:',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                //
                                CarouselSlider.builder(
                                  itemCount: imgList.length,
                                  itemBuilder: (BuildContext context,
                                      int index,
                                      int realIndex) {
                                    return InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Giza(data:state.homeModel.data![index],img:index==0?'assets/image/aswa2.jpg':index==1?'assets/image/giza2.jpg':index==2?'assets/image/huxl2.jpg':index==3?'assets/image/luxor.jpg':'assets/image/siwa2.jpg')),
                                        );

                                      },
                                      child: buildImage(
                                          imgList, index, realIndex),
                                    );
                                  },
                                  options: CarouselOptions(
                                    viewportFraction: 0.45,
                                    padEnds: false,
                                    height: 180,
                                    initialPage: 0,
                                    enlargeCenterPage: false,
                                    autoPlay: false,
                                    onPageChanged: (index, _) {
                                      setState(() {
                                        currentIndex = index;
                                      });
                                    },
                                  ),
                                ),
                                //

                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    buildCircleContainer(0),
                                    buildCircleContainer(1),
                                    buildCircleContainer(2),
                                    buildCircleContainer(3),
                                    buildCircleContainer(4),
                                  ],
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, top: 25, bottom: 16),
                                  child: Text(
                                    'Suggested For You:',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                // ده ايه
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coastal()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: GridView.count(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 15,
                                      childAspectRatio: 188 / 271,
                                      children: List.generate(
                                          HomeCubit.get(context).aiModel!.data!.length>=2?  photo1.length:1,
                                              (index) =>
                                              GridViewItem(
                                                body: HomeCubit.get(context).aiModel!.data![index].tourismType!,
                                                photo1: photo1[index], title:HomeCubit.get(context).aiModel!.data![index].name!,
                                              )),
                                    ),
                                  ),
                                ),
                                //

                                //
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 32, top: 43, left: 18),
                                  child: Text(
                                    'Recommendation Trips :',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.55,
                                  child: GridView.builder(
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                    itemCount: photo2.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Taba()));
                                        },
                                        child: Card(
                                          child: Image.asset(photo2[index]),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ) : state is HomeErrorState
                              ? Center(child: Text('an error happen please try again'))
                              : const Text('');
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //todo
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScanDesign()),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.1,
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
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
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
                          color: Color(0xffBE8C63),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Favourite()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffE4D1B9),
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
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
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
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
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
      endDrawer: NavDrawer(),
      key: key,
    );
  }

  Container buildCircleContainer(index) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Colors.brown
            : Colors.brown.withOpacity(0.5),
      ),
    );
  }
}

Container buildImage(List<dynamic> imgList, int index, int realIndex) {
  return Container(
    width: 200,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        imgList[index],
        fit: BoxFit.fill,
      ),
    ),
  );
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    this.photo1, required this.title, required this.body,
  });

  final photo1;
  final String title,body;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 188,
        height: 271,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(photo1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
            child: Text(
             title,
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,

                  fontWeight: FontWeight.w600),
            ),
          ),
           Text(
             body,
             textAlign: TextAlign.center,
             style: TextStyle(
                 color: Color(0xffBE8C63),
                 fontSize: 16,
                 // overflow: TextOverflow.ellipsis,
                 fontWeight: FontWeight.w500),
           ),
          const SizedBox(
            height: 8,
          )
        ]),
      ),
    );
  }
}
