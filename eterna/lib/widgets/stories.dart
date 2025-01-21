import 'package:flutter/material.dart';

class Stories extends StatefulWidget{
  const Stories({super.key});
  @override
  StoriesState createState()=> StoriesState();
}

class StoriesState extends State<Stories>{
  @override
  Widget build (BuildContext context){
    return SafeArea(
        child: Container(
          height: 100, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.00),
                child:Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/onbording/img3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Name',style: TextStyle(fontSize: 13),),
                  ],
                ),
              );
            },
          ),
        ),
    );
  }
}

