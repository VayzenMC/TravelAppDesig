import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelScreen extends StatefulWidget {
  TravelScreen({
    super.key,
    required this.name,
    required this.location,
    required this.price,
    required this.bagraundImage,
    required this.description,
    required this.traveltime,
    required this.temperatura,
    required this.reting,
  });
  String name;
  String location;
  double price;
  String bagraundImage;
  String description;
  double traveltime;
  double temperatura;
  double reting;
  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(height: 28.h),
            Container(
              height: 460.h,
              width: 374.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                  image: AssetImage(widget.bagraundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 18.h),
                  SizedBox(
                    width: 344.w,
                    height: 44.h,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/images/Group 254.png',
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/Group 255.png',
                          width: 40.w,
                          height: 40.h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 331.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                        image: AssetImage('assets/travelimage/down_Panel.png'),
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 18.h),

                        Row(
                          children: [
                            SizedBox(width: 15.w),
                            Text(
                              widget.name,
                              style: GoogleFonts.inter(
                                fontSize: 24.sp,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Price",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                color: Color(0xFFCAC8C8),
                              ),
                            ),
                            SizedBox(width: 22.w),
                          ],
                        ),
                        SizedBox(height: 11.h),
                        Row(
                          children: [
                            SizedBox(width: 254.w),
                            Text(
                              "\$${widget.price}",
                              style: GoogleFonts.roboto(fontSize: 25.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.h),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                SizedBox(width: 28.w),
                Text(
                  "Overview",
                  style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    color: Color(0xFF1B1B1B),
                  ),
                ),
                SizedBox(width: 32.w),
                Text(
                  "Details",
                  style: GoogleFonts.inter(
                    color: Color(0xFF1B1B1B),
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 28.w),
                  Image.asset(
                    'assets/icons/Group 256.png',

                    width: 34.w,
                    height: 34.h,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    "${widget.traveltime} hours",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF7E7E7E),
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(width: 63.w),
                  Image.asset(
                    'assets/icons/Group 257.png',

                    width: 34.w,
                    height: 34.h,
                  ),
                  Text(
                    "${widget.temperatura} C",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF7E7E7E),
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(width: 60.w),
                  Image.asset(
                    'assets/icons/Group 258.png',

                    width: 34.w,
                    height: 34.h,
                  ),
                  Text(
                    "${widget.reting} ",
                    style: GoogleFonts.roboto(
                      color: Color(0xFF7E7E7E),
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            SizedBox(
              height: 135.h,
              width: 374.w,
              child: Text(
                widget.description,
                style: GoogleFonts.roboto(fontSize: 18.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
