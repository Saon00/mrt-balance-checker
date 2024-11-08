import 'package:flutter/material.dart';
import 'package:mrtbalancechecker/app/core/appsize.dart';
import 'package:mrtbalancechecker/app/modules/mainscreen/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const Mainscreen(),
    );
  }
}
