import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CustomBannerWidget extends StatefulWidget {
  const CustomBannerWidget({super.key});

  @override
  State<CustomBannerWidget> createState() => _CustomBannerWidgetState();
}

class _CustomBannerWidgetState extends State<CustomBannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List _bannerImage = [];

  getBanners(){
    return _firestore
    .collection('banners')
    .get()
    .then((QuerySnapshot querySnapshot){
      for (var doc in querySnapshot.docs) {
        setState(() {
          _bannerImage.add(doc['image']);
        });
      }
    });
  }
  @override
  void initState() {
    getBanners();
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
        child: PageView.builder(
          itemCount: _bannerImage.length,
          itemBuilder:(context, index) {
          return Image.network(
            _bannerImage[index],
            fit: BoxFit.cover,
            );
        },),
      ),
    );
  }
}