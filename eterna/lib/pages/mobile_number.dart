import 'package:eterna/pages/otp_timer.dart';
import'package:flutter/material.dart';
import '../pages/start_profile.dart';

class MobileNumber extends StatelessWidget{
  const MobileNumber({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('My Number',style: TextStyle(
              fontSize: 18.00,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 15,),
            Text('Please enter your valid phone number.We will send \n you a 4-digit verification code',style: TextStyle(
              fontSize: 14.00,
              color: Colors.grey,
            ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Please enter your phone number';
                  }
                  else if (value.length < 10){
                    return 'Please enter a valid phone number';
                  }
                  else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>StartProfile()));
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF7b4692),
              ),
              child:Text('Continue',style: TextStyle(color: Colors.white,fontSize: 16.00),),
            ),
          ],
        ),
        ),
      ),
      );
  }
}