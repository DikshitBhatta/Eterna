import'package:flutter/material.dart';
import '../widgets/onBording/algorithm.dart';
import '../widgets/onBording/matches.dart';
import '../widgets/onBording/premium.dart';
import '../pages/signup_page.dart';
class Onbording extends StatefulWidget{
  const Onbording({super.key});
  @override
  OnbordingState createState() => OnbordingState();
}

class OnbordingState extends State<Onbording>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SafeArea(
      child:Column(
        children:<Widget>[
        Expanded(
          child:
        PageView(
        children: <Widget>[
          Algorithm(),
          Matches(),
          Premium(),
          ],
        ),),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF7b4692),
          ),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage())),
          child: Text('Create an Account',style:TextStyle(color:Colors.white,fontSize: 18.00),),

        ),
        Text('Already have an account? Sign in',style:TextStyle(color:Color(0XFF7b4692)),),
        SizedBox(height: 30.00),
      ],
    ),),);
  }
}