import 'package:flutter/material.dart';
import 'package:tender_app/constants/consts.dart';
import 'package:tender_app/screens/main_screen.dart';

void main() => runApp(const TenderApp());

class TenderApp extends StatelessWidget {
  const TenderApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-procurement system',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: kScaffoldColor,
      ),
      home: const MainScreen(),
    );
  }
}
