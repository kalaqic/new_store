import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<String> _categoryList = [
    'food',
    'sport',
    'gaming',
    'for house',
    'lamps',
    'electronic',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            'Categories'
            ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                width: 320,
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryList.length,
                  itemBuilder: (context, index) {
                    return ActionChip(
                      
                      onPressed: () {},
                      backgroundColor: Colors.orange,
                      label: Text(
                        
                        _categoryList[index],
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/category');
            }, icon: const Icon(Icons.forward_outlined))
          ],
        ),
      ],
    );
  }
}
