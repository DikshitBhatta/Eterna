import 'package:flutter/material.dart';
class Discover extends StatefulWidget{
  const Discover({super.key});
  @override
  DiscoverState createState()=> DiscoverState();
}

class DiscoverState extends State<Discover>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Discover',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                    Text('Chiago II',style: TextStyle(color: Colors.grey,fontSize: 16),),
                  ],
                ),
                SizedBox(width: 110,),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined),iconSize: 30.00,color: Colors.grey,),
              ],
            ),
            Image(image: AssetImage('assets/onbording/img3.png'),height: 600,width: 300,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.00),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.close),iconSize: 40.00,color: Colors.red,),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.red.shade700,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.5), // Replace withOpacity
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.heart_broken),iconSize: 40.00,color: Colors.white,),
                ),
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.00),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.2), // Replace withOpacity
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.star),iconSize: 40.00,color: Colors.red,),
                )
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}