import 'package:flutter/material.dart';

class Matches extends StatefulWidget{
  const Matches({super.key});
  @override
  MatchState createState() => MatchState();
}

class MatchState extends State<Matches>{
  @override
  Widget build(BuildContext context){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Image(image: AssetImage('assets/onbording/img2.png'),height: 400,), 
        Text('Matches',style: TextStyle(color: Color(0xFF5d2f52),
                                        fontSize: 32.00,
                                        fontWeight: FontWeight.bold,
                                        ),
            ),
        SizedBox(height: 12,),
        Text('We match you with people that have a large array of \n similar interests',textAlign: TextAlign.center,),],
      ),
    );
  }
}