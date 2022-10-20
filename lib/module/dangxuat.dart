import 'package:flutter/material.dart';
import 'package:hh/module/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class dangxuat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: LoginPage(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/graduating_student.png",
      text: "Đang đăng Xuất...",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.black,
        Colors.white,
        Colors.blue,
        Colors.red,
      ],
      backgroundColor: Color.fromARGB(255, 118, 234, 255),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dang xuat',
      home: example1,
    );
  }
}
