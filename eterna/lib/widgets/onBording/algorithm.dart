import 'package:flutter/material.dart';

class Algorithm extends StatefulWidget{
  const Algorithm({super.key});
  @override
  AlgorithmState createState() => AlgorithmState();
}
class AlgorithmState extends State<Algorithm>{
@override
Widget build(BuildContext context){
  return Center(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:Image(image:AssetImage('assets/onbording/image1.png'),height: 400,),
        ),
        Text('Algorithm',style:TextStyle(color: Color(0xFF5d2f52),
                                      fontSize: 32.00,
                                      fontWeight: FontWeight.bold
                                      ),
            ),
        SizedBox(height: 15,),
        Text('User goind through a vetting process to ensure you \n never match with bots',textAlign: TextAlign.center,),
      ],
    )
  );
}
}