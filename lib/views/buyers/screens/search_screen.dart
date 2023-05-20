import 'package:flutter/material.dart';
import 'package:store_new/views/buyers/screens/widgets/banner_widget.dart';
import 'package:store_new/views/buyers/screens/widgets/text_input_widget.dart';
import 'package:store_new/views/buyers/screens/widgets/welcome_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            const WelcomeText(),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: const TextInputField(),
            ),
          ),
          const CustomBannerWidget(),
        ],
      ),
    );
  }
}



