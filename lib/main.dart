import 'package:calculator/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const Calculator());
}



class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: const ScreenHome(),
    );
  }
}
