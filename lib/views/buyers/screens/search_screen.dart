import 'package:flutter/material.dart';
import 'package:store_new/views/buyers/components/search/banner.dart';
import 'package:store_new/views/buyers/components/search/categories.dart';
import 'package:store_new/views/buyers/components/search/search_input.dart';
import 'package:store_new/views/buyers/components/search/welcome_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const WelcomeText(),
          const SearchInput(),
          const CustomBannerWidget(),
          Categories(),
        ],
      ),
    );
  }
}
