import'package:flutter/material.dart';

class SignupPage extends StatelessWidget{
  const SignupPage({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Image(image: AssetImage('assets/logo/eterna2.png'),height: 100,width: 100,),
          SizedBox(height: 75,),
          Text('Sign up to continue',style:TextStyle(
                                        fontSize: 18.00,
                                        fontWeight: FontWeight.w400
                                        ),
              ),
          SizedBox(height: 15,),   
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF7b4692),
            ),
            child: Text('Continue with Email',style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF7b4692),
            ),
            child: Text('Continue with Phone Number',style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Text('or sign up with',style: TextStyle(color: Colors.black),),
              Expanded(
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(onPressed: (){}, child: Text('Terms of use',style:TextStyle(color:Color(0xFF5d2f52)),),),
              TextButton(onPressed: (){}, child: Text('Privacy Policy',style:TextStyle(color:Color(0xFF5d2f52)),),),
            ],
          ),
        ],
      )),
    );
  }
}
