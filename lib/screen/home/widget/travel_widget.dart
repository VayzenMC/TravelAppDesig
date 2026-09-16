import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../travel_screen/view/travel_screen.dart';

class TravelWidget extends StatefulWidget {
  TravelWidget({
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
  State<TravelWidget> createState() => _TravelWidgetState();
}

class _TravelWidgetState extends State<TravelWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TravelScreen(
              name: widget.name,
              location: widget.location,
              price: widget.price,
              description: widget.description,
              bagraundImage: widget.bagraundImage,
              traveltime: widget.traveltime,
              temperatura: widget.temperatura,
              reting: widget.reting,
            ),
          ),
        );
      },
      child: Container(
        width: 270.w,
        height: 405.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
            image: AssetImage(widget.bagraundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 305.h),
            Container(
              width: 224.w,
              height: 75.h,
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
                  SizedBox(height: 11.h),
                  Row(
                    children: [
                      SizedBox(width: 36.w),
                      Text(
                        "${widget.name} ${widget.location}",
                        style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
