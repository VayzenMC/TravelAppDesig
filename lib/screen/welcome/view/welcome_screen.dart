import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/view/home_screen.dart';

class Welcome_Screen extends StatefulWidget {
  final title;
  const Welcome_Screen({super.key, required this.title});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430.w,
        height: 932.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color(0xFF0172B2), const Color(0xFF001645)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                width: 252.w,
                height: 155.h,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 40.h,
                  children: [
                    Container(
                      width: 157.w,
                      height: 55.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 15.h,
                        children: [
                          Image.asset(
                            "assets/images/Travel.png",
                            width: 106.w,
                            height: 55.h,
                          ),
                          Image.asset(
                            "assets/images/globe_icon.png",
                            width: 36.w,
                            height: 36.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 252.w,
                      height: 60.h,
                      child: Text(
                        "Find Your Dream\nDestination With Us",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
