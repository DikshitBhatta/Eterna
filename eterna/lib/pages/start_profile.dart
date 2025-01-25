import 'package:eterna/pages/profile2.dart';
import 'package:flutter/material.dart';


class StartProfile extends StatefulWidget{
  const StartProfile({super.key});
  @override
  StartProfileState createState()=> StartProfileState();
}

class StartProfileState extends State<StartProfile>{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Skip',style: TextStyle(color: Color(0xFF5d2f52)),textAlign: TextAlign.right,),
          SizedBox(height: 15,),
          Text('Profile Detail',style: TextStyle(fontSize: 32.00,fontWeight: FontWeight.bold),),
          SizedBox(height: 65,),
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/onbording/image1.png'),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon:Icon(Icons.camera_alt_outlined,color: Color(0XFF7b4692),),
                    onPressed: (){},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 35,),
          Center(
            child:SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please enter your First name';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please enter your Last name';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  labelText: 'Birthday',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please enter your Birthday';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Height',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
                validator: (value){ 
                  if(value==null || value.isEmpty){
                  return 'Please enter your location' ;
                  }
                  else{
                  return null;
                  }
                },
              ),
              
                ],
              ),
              ),),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile2()));
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF7b4692),
                ),
               child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 16.00),),
               ),

            ],
          ),
        ),
  );
  }
}