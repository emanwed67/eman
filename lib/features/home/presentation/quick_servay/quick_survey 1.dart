import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/features/home/presentation/home_view.dart';

import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class QuickPage1 extends StatefulWidget {
  const QuickPage1({super.key, required this.yesOrNoe});
    final bool  yesOrNoe;
  @override
  State<QuickPage1> createState() => _QuickPage1State();
}

String gg='Archaeological';
class _QuickPage1State extends State<QuickPage1> {
  String x = '0', y = '0', z = '0', c = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical:MediaQuery.of(context).size.width * 0.04 ,
              horizontal: MediaQuery.of(context).size.width * 0.04, ),
          child: BlocProvider(
            create: (context) =>
            HomeCubit()
              ..getAiFunc(tourism: x=='10'?'Coastal':y=='10'? 'Religious':z=='10'? 'Medical':'Archaeological'),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state){
                return   Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xff6C3428),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        const Text(
                          'Quick Survey',
                          style: TextStyle(
                            color: Color(0xff6C3428),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            'What Place Did You Visit ?',
                            style: TextStyle(
                              color: Color(0xff6C3428),
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    if(widget.yesOrNoe)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18)),
                                borderSide: BorderSide(color: Color(0xffE4D1B9))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE4D1B9)),
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18))),
                            labelText: 'Enter Places Name',
                            labelStyle: TextStyle(color: Color(0xffE4D1B9)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18)),
                                borderSide: BorderSide(color: Color(0xffE4D1B9)))),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.01),
                          child:  Text(
                            'What Tourisms Do You Prefer ?',
                            style: TextStyle(
                              color: const Color(0xff6C3428),
                              fontSize: 24.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.03),
                          child: const Text(
                            'Choose More Than One',
                            style: TextStyle(
                              color: Color(0xffE4D1B9),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.all((MediaQuery.of(context).size.width * 0.02)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.33,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(blurRadius: 2, color: Color(0xffE4D1B9))
                            ],
                            borderRadius: BorderRadius.circular(16),
                            // color: Colors.cyan,
                            color: const Color(0xffFFFFFF)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                x == '10' ? x = 'e' : x = '10';
                                gg='Coastal';
                                HomeCubit.get(context).getAiFunc(tourism:'Coastal');
                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: const Color(0xffE4D1B9), width: 1.9),
                                      ),
                                      child: x == "10"
                                          ? const CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffE4D1B9))
                                          : const SizedBox.shrink()),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Coastal Tourism',
                                    style: TextStyle(
                                      color: Color(0xff6C3428),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            InkWell(
                              onTap: () {
                                z == '10' ? z = 'e' : z = '10';
                                gg='Coastal';
                                HomeCubit.get(context).getAiFunc(tourism:'Coastal');

                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xffE4D1B9), width: 1.9)),
                                      child: z == "10"
                                          ? const CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffE4D1B9))
                                          : const SizedBox.shrink()),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Religious Tourism',
                                    style: TextStyle(
                                      color: Color(0xff6C3428),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            InkWell(
                              onTap: () {
                                y == '10' ? y = 'e' : y = '10';
                                gg='Medical';
                                HomeCubit.get(context).getAiFunc(tourism:'Medical');

                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 20,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xffE4D1B9), width: 1.9)),
                                      child: y == "10"
                                          ? const CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffE4D1B9))
                                          : const SizedBox.shrink()),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Medical Tourism',
                                    style: TextStyle(
                                      color: Color(0xff6C3428),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            InkWell(
                              onTap: () {
                                c == '10' ? c = 'e' : c = '10';
                                gg='Archaeological';

                                HomeCubit.get(context).getAiFunc(tourism: 'Archaeological');
                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 20.w,
                                      height: 20.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xffE4D1B9), width: 1.9)),
                                      child: c == "10"
                                          ?  CircleAvatar(
                                          radius: 5.5.r,
                                          backgroundColor: const Color(0xffE4D1B9))
                                          : const SizedBox.shrink()),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Archaeological Tourism',
                                    style: TextStyle(
                                      color: const Color(0xff6C3428),
                                      fontSize: 24.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                          color: const Color(0xffBE8C63),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 51,
                          minWidth: 190,
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  const Home_Screen(),),(route) =>false, );
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              color: Color(0xffE4D1B9),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ],
                );
              }

            ),
          ),
        ),
      ),
    );
  }
}
