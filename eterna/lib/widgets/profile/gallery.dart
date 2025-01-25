import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});
  @override
  GalleryState createState() => GalleryState();
}

class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), 
        shrinkWrap: true, 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.00,
          mainAxisSpacing: 10.00,
          childAspectRatio: 1, 
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return GridTile(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.00),
              child: Image(
                image: AssetImage('assets/onbording/img3.png'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}