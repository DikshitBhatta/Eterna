import 'package:flutter/material.dart';
class Tiles extends StatefulWidget{
  const Tiles({super.key});
  @override
  TilesState createState()=> TilesState();
}

class TilesState extends State<Tiles>{
  @override
  Widget build (BuildContext context){
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.00,
        mainAxisSpacing: 10.00,
        childAspectRatio: 1,
      ),
      itemCount: 4, 
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.00),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.00),
            child: Image(
              image: AssetImage('assets/onbording/img3.png'),
              fit: BoxFit.cover,
            ),
          ),
        );
      }
    );
  }
}




