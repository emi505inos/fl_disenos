import 'package:flutter/material.dart';

import 'package:fl_disenos/screen/basic_design.dart';
import 'package:fl_disenos/screen/home_screen.dart';
import 'package:fl_disenos/screen/scroll_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (__) => BasicDesignScreen(),
        'scroll_screen': (__) => ScrollScreen(),
        'home_screen': (__) => HomeScreen(),
      }
    );
  }
}