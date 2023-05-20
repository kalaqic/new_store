import 'package:flutter/material.dart';
import 'package:store_new/views/buyers/main_scr.dart';

void main() async{


  runApp ( MaterialApp(
    //scroll on web
    scrollBehavior: AppScrollBehavior(),
    debugShowCheckedModeBanner: false,
    home: 
    const MainScreen(),
    ),);
}