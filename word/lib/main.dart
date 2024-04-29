import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:word/const/color_is.dart';
import 'package:word/pages/HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  iconTheme: IconThemeData(
            color: ColorIs.wColor,
          ))),
          home: Scaffold(
            body: HomePage(),
          ),
        );
      },
    );
  }
}
