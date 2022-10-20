import 'package:flutter/material.dart';
import 'package:hh/module/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'module/forgotpass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: MyApploggin(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/graduating_student.png",
      text: "Quản lý Sinh Viên",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Color.fromARGB(255, 118, 255, 175),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}
