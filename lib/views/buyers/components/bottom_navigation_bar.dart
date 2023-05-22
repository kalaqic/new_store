import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_new/views/buyers/screens/account_screen.dart';
import 'package:store_new/views/buyers/screens/cart_screen.dart';
import 'package:store_new/views/buyers/screens/category_screen.dart';
import 'package:store_new/views/buyers/screens/home_screen.dart';
import 'package:store_new/views/buyers/screens/search_screen.dart';
import 'package:store_new/views/buyers/screens/store_screen.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {

  int _pageIndex = 0;
  final List<Widget> _pages = const [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
      bottomNavigationBar:BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 216, 195, 4),
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: 'HOME'
      ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/categories.svg'),
            label: 'CATEGORY'
      ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/store.svg'),
            label: 'STORE'
      ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            label: 'CART'
      ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: 'SEARCH'
      ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account.svg'),
            label: 'ACCOUNT'
      ),

      ],
      ),
      body: _pages[_pageIndex],
    );
      
      
  }
}