import 'package:flutter/material.dart';
import 'package:store_new/routes/routes.dart';
import 'package:store_new/views/buyers/main_scr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp ( MaterialApp(
    onGenerateRoute: Routes.generateRoute,
    //scroll on web
    scrollBehavior: AppScrollBehavior(),
    debugShowCheckedModeBanner: false,
    home: 
    const MainScreen(),
    ),);
}