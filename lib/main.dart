import 'package:flutter/material.dart';
import 'package:kidtooncard/app_sceens/category_widget.dart';
import './app_sceens/category_widget2.dart';
import './app_sceens/homepage.dart';
import './app_sceens/living_info_g1.dart';
import './app_sceens/firstpage.dart';
import './app_sceens/living_info_g2.dart';
import './app_sceens/howto_widget.dart';

void main() => runApp(MyApp());
// todo ควย
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/home': (context) => Home(),
        '/categoryg1': (context) => CategoryG1(),
        '/livingg1': (context) => LivingInfoG1(),
        '/categoryg2': (context) => CategoryG2(),
        '/livingg2': (context) => LivingInfoG2(),
        '/howto': (context) => HowtoPage()
      },
    );
  }
}
