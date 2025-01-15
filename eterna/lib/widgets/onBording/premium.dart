import 'package:flutter/material.dart';

class Premium extends StatefulWidget{
  const Premium({super.key});
  @override
  PremiumState createState() => PremiumState();
}

class PremiumState extends State<Premium>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/onbording/img3.png'),height: 400,),
          Text('Premium',style:TextStyle(color: Color(0xFF5d2f52),
                                        fontSize: 32.00,
                                        fontWeight: FontWeight.bold
                                        ),
              ),
          SizedBox(height: 15,),
          Text('Sign up Today and enjoy the first month of premium \n benefits on us.',textAlign: TextAlign.center,)
        ],),
    );
  }
}