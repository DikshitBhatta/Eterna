import 'package:flutter/material.dart';

class EnableNotification extends StatefulWidget{
  const EnableNotification({super.key});
  @override
  EnableNotificationState createState()=> EnableNotificationState();
}

class EnableNotificationState extends State<EnableNotification>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Skip',style: TextStyle(color: Color(0xFF5d2f52)),textAlign: TextAlign.right,),
              SizedBox(height: 45,),
              Image(image: AssetImage('assets/enablenotification.png'),height: 200,width: 200,),
              SizedBox(height: 45,),
              Text('Enable Notifications',style: TextStyle(fontSize: 32.00,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('Get Push-notification when you get a match \n or receive a message',style: TextStyle(
              fontSize: 14.00,
              color: Colors.grey,
            ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF7b4692),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
            ),
            child: Text('I want to be notified',style: TextStyle(color: Colors.white,fontSize: 16.00),),
            ),


            ],
          ),

        ),
      ),

    );
  }
}