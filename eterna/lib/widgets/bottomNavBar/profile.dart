import 'package:flutter/material.dart';
class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State<Profile>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Profile',style: TextStyle(fontSize: 24),textAlign: TextAlign.right,),
            SizedBox(height: 45,),
          ],
        ),
      ),
      ),
    );
  }
}