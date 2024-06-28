import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifica extends StatelessWidget {
  Notifica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              left: 12.w,
              bottom: 20.h,
            ),
            child: Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 24.w,
                    color: const Color(0xff6C3428),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  'Notification',
                  style: TextStyle(
                    color: Color(0xff6C3428),
                    fontSize: 24.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) =>           Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.93,
                    height: MediaQuery.of(context).size.height * 0.12,
                    padding:  EdgeInsets.all(16.w),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.w,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xffE4D1B9),
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Now When You Book From App You Can Get',
                          style: TextStyle(
                            color: Color(0xFFBE8C63),
                            fontSize: 16.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '10% Discount On Taba Trip.',
                          style: TextStyle(
                            color: Color(0xFFBE8C63),
                            fontSize: 16.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 20.h,),
                itemCount: 2),
          )
        ],
      ),
    );
  }
}
