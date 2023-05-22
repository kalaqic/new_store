import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:store_new/views/buyers/components/bottom_navigation_bar.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

//scroll for web
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavigationCustom();
  }
}