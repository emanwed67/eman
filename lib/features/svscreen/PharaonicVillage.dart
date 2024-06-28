import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';

import 'package:tourism_app/features/svscreen/Giza.dart';

import '../home/cubit/home_cubit.dart';
import '../home/cubit/home_state.dart';

class PharaonicVillage extends StatefulWidget {
  const PharaonicVillage({super.key, required this.id, required this.image});

  final int id;
  final String image;

  @override
  State<PharaonicVillage> createState() => _PharaonicVillageState();
}
bool fav1=false;
bool fav2=false;
bool fav3=false;
bool fav4=false;
class _PharaonicVillageState extends State<PharaonicVillage> {
  final _formKey = GlobalKey<FormState>();

  bool isfevorir=false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize32 = (screenWidth <= 600) ? 32 : 42;
    double fontSize24 = (screenWidth <= 600) ? 24 : 28;
    double fontSize16 = (screenWidth <= 600) ? 16 : 22;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => HomeCubit()..getOnePlace(id: widget.id),
            child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
              return state is PlaceLoadingState
                  ? Column(
                      children: [
                        SizedBox(
                            height: .5.sh,
                            child: Center(child: CircularProgressIndicator())),
                      ],
                    )
                  : state is PlaceSuccessState
                      ? Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Stack(children: [
                                    Image.asset(
                                      widget.id == 7
                                          ? 'assets/image/00.png'
                                          : widget.id == 5
                                              ? 'assets/image/photo_17.jpg'
                                              : widget.id == 8
                                                  ? 'assets/image/photo_7_2024-04-20_15-55-17.jpg'
                                                  : 'assets/image/02.png',
                                    ),
                                    //
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "     ",
                                                )
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(
                                                Icons.arrow_back_ios,
                                                color: Color(0xFF6C3428),
                                                size: 30,
                                              ),
                                            ),
                                            Spacer(),
                                            InkWell(
                                              onTap: (){
                                                isfevorir=!isfevorir;
                                                if(widget.id==5){
                                                  fav2=!fav2;
                                                }
                                                else if (widget.id==6){
                                                  fav1=!fav1;
                                                }
                                                else if (widget.id==7){
                                                  fav4=!fav4;
                                                } else if (widget.id==8){
                                                  fav3=!fav3;
                                                }
                                                setState(() {
                                                });
                                                // !isfevorir? HomeCubit.get(context).deleteFav(context):HomeCubit.get(context).addFave(context,id:widget.id);

                                              },
                                              child: Icon(
                                                isfevorir? Icons.favorite:Icons.favorite_border_outlined,
                                                color: mainColor,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    //
                                  ])
                                ],
                              ),
                            ),

                            Container(
                              height: MediaQuery.of(context).size.height * .5,
                              width: MediaQuery.of(context).size.width * 1.0,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  state.place.data?.description ?? '',
                                  style: TextStyle(
                                    color: Color(0xFFBE8C63),
                                    fontSize: fontSize16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  '    Some Pics&Video:     ',
                                  style: TextStyle(
                                    color: Color(0xFF6C3428),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  ",
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => PharaonicVillage()),
                                        // );
                                      },
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "      ",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => PharaonicVillage()),
                                        // );
                                      },
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336 (1).png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            //

                            Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  ",
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => PharaonicVillage()),
                                        // );
                                      },
                                      child: Container(
                                          child: Column(children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/image/Rectangle 336 (2).png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .45,
                                          ),
                                        ])
                                      ])),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "      ",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => PharaonicVillage()),
                                        // );
                                      },
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Stack(children: [
                                              Image.asset(
                                                'assets/image/Rectangle 336 (3).png',
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .45,
                                              ),
                                            ])
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 1,
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                          ],
                        )
                      : state is PlaceErrorState
                          ? Text('an error happen please try again')
                          : Text('an error happen please try again');
            }),
          ),
        ),
      ),
    );
  }
}



