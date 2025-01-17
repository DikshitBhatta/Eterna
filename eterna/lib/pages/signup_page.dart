import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/mobile_number.dart';

class SignupPage extends StatelessWidget{
  const SignupPage({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(image: AssetImage('assets/logo/eterna2.png'),height: 100,width: 100,),
          ),
          SizedBox(height: 75,),
          Text('Sign up to continue',style:TextStyle(
                                        fontSize: 18.00,
                                        fontWeight: FontWeight.w600,
                                        ),
              ),
          SizedBox(height: 15,), 
          Container(
            padding: EdgeInsets.all(10),  
            width: 300,
            child: Column(
              children: <Widget>[ 
                SizedBox(width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF7b4692),
                    ),
                    child: Text('Continue with Email',style: TextStyle(color: Colors.white,fontSize: 16.00),),
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>MobileNumber()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF7b4692),
                   ),
                    child: Text('Continue with Phone Number',style: TextStyle(color: Colors.white,fontSize: 16.00),),
                 ),
                ),
              ],
            ),
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
              Text('  or sign up with  ',style: TextStyle(color: Colors.black),),
              Expanded(
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:Colors.blueGrey.shade100),
                  ),
                  child: SvgPicture.asset('assets/svglogo/icons8-google.svg',height: 30,width: 30,color: Color(0XFF7b4692),),
                ),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                    border:Border.all(color:Colors.blueGrey.shade100),
                  ),
                  child: SvgPicture.asset('assets/svglogo/icons8-facebook.svg',height: 30,width: 30,color: Color(0XFF7b4692),),
                ),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                    border:Border.all(color:Colors.blueGrey.shade100),
                  ),
                  child: SvgPicture.asset('assets/svglogo/icons8-apple.svg',height: 30,width:30,color: Color(0XFF7b4692),),
                )

              ],
            ),

          ),
          SizedBox(height: 45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(onPressed: (){}, child: Text('Terms of use',style:TextStyle(color:Color(0xFF5d2f52)),),),
              SizedBox(width: 20,),
              TextButton(onPressed: (){}, child: Text('Privacy Policy',style:TextStyle(color:Color(0xFF5d2f52)),),),
            ],
          ),
        ],
      )),
    );
  }
}
