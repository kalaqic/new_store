import 'package:flutter/material.dart';
import 'package:store_new/views/buyers/screens/category_screen.dart';
import 'package:store_new/views/buyers/screens/search_screen.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case '/category':
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      default:
        // ako ne postoji ruta
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Ruta ne postoji'),
            ),
          );
        });
    }
  }
}


