import 'package:flutter/material.dart';

class CustomBannerWidget extends StatefulWidget {
  const CustomBannerWidget({super.key});

  @override
  State<CustomBannerWidget> createState() => _CustomBannerWidgetState();
}

class _CustomBannerWidgetState extends State<CustomBannerWidget> {


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: 
        BoxDecoration(
          color: Colors.yellow.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: PageView(
          children: const [
            Center(child: Text('Banner 1')),
            Center(child: Text('Banner 2')),
            Center(child: Text('Banner 3')),
          ],
        )
      ),
    );
  }
}