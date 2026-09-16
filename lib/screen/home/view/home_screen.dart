import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/home_screen_bloc.dart';
import '../widget/travel_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 28.25.h),
          Row(
            children: [
              SizedBox(width: 26.w),
              SizedBox(
                width: 377.w,
                height: 240.h,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 377.75.w,
                      height: 71.5.h,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, David 👋",
                            style: GoogleFonts.montserrat(fontSize: 26.sp),
                          ),

                          Text(
                            "Explore the world",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 38.h),
                    Container(
                      width: 374.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD2D2D2)),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 259.w,
                              height: 32.h,
                              child: TextField(
                                decoration: const InputDecoration(
                                  labelText: 'Search places',
                                  fillColor: Color(0xFF888888),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              width: 0.5.w,
                              height: 32.h,
                              color: Color(0xFFD2D2D2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 42.h),
                    SizedBox(
                      width: double.infinity,
                      height: 30.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/Popular_places.png",
                            width: 152.w,
                            height: 30.h,
                          ),
                          Spacer(),
                          Text(
                            'View all',
                            style: GoogleFonts.roboto(color: Color(0xff888888)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Row(
            children: [
              SizedBox(width: 28.w),
              SizedBox(
                width: 402.w,
                height: 54.h,

                child: Row(
                  spacing: 25.w,
                  children: [
                    Container(
                      width: 136.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xff2F2F2F),
                      ),
                      child: Center(
                        child: Text(
                          "Most Viewed",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 105.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xFFFBFBFB),
                      ),
                      child: Center(
                        child: Text(
                          "Nearby",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Color(0xffC5C5C5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 111.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xFFFBFBFB),
                      ),
                      child: Center(
                        child: Text(
                          "Latest",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: Color(0xffC5C5C5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 45.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Row(
              spacing: 22.w,
              children: [
                TravelWidget(
                  name: "Mount Fuji,",
                  location: "Tokyo",
                  bagraundImage: 'assets/travelimage/tokyo.png',
                  price: 230,
                  description: "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ",
                  traveltime: 4,
                  temperatura: 35,
                  reting: 4.5,
                ),

                TravelWidget(
                  name: "Andes",
                  location: "South",
                  price: 320,
                  bagraundImage: 'assets/travelimage/Group_38.png',
                  description: "nimadurnimadurnimadurnimadurnimadurnimadurnimadurnimadur",
                  traveltime: 9,
                  temperatura: 14,
                  reting: 5.0,
                ),
                TravelWidget(
                  name: "qayerdur",
                  location: "South",
                  price: 320,
                  bagraundImage: 'assets/travelimage/Group_38.png',
                  description: "nimadurnimadurnimadurnimadurnimadurnimadurnimadurnimadur",
                  traveltime: 9,
                  temperatura: 14,
                  reting: 5.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
