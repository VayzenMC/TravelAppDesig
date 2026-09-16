import 'package:flutter/material.dart';

import 'screen/welcome/view/welcome_screen.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          home: const Welcome_Screen(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}
