import 'package:eterna/pages/enable_notification.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget{
  const FriendPage({super.key});
  @override
  FriendPageState createState()=> FriendPageState();
}

class FriendPageState extends State<FriendPage>{
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
              Image(image: AssetImage('assets/add_friend.png'),height: 200,width: 200,),
              SizedBox(height: 45,),
              Text('Search Friend',style: TextStyle(fontSize: 32.00,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('You can find friend from your contact list \n to connected.',style: TextStyle(
              fontSize: 14.00,
              color: Colors.grey,
            ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EnableNotification()));
            },
             style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF7b4692),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
            ),
            child: Text('Access to a contact List',style: TextStyle(color: Colors.white,fontSize: 16.00),),
            ),


            ],
          ),

        ),
      ),

    );
  }
}