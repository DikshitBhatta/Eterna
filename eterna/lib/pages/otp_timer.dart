import 'package:flutter/material.dart';
import 'dart:async';

class OtpTimer extends StatefulWidget{
  const OtpTimer({super.key});
  @override
  OtpTimerState createState()=> OtpTimerState();
}

class OtpTimerState extends State<OtpTimer>{
  int _counter = 30;
  Timer? _timer;
  final otpLength =6;
  final List<TextEditingController> _controllers= [];
  final List<FocusNode> _focusNodes = [];

  void _starttime(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
    if(_counter >0){
      setState(() {
        _counter--;
      });}
    else{
      timer.cancel();
    }
    });
  }
  void _onchanged(String value,int index){
    if(value.isNotEmpty){
      if(index<otpLength-1){
        _focusNodes[index+1].requestFocus();
      }
      else{
        _focusNodes[index].unfocus();
      }
    }
    else if(value.isEmpty && index>0){
      _focusNodes[index-1].requestFocus();
    }
  }
  String getOtp(){
    return _controllers.map((controller)=>controller.text).join();
  }
  @override
  void initState(){
    super.initState();
    _starttime();
    for(int i=0;i< otpLength;i++){
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
  }
  @override
  void dispose(){
    _timer?.cancel();
    for(int i=0;i<otpLength;i++){
      _controllers[i].dispose();
      _focusNodes[i].dispose();
    }
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text('00:$_counter',style: 
                  TextStyle(
                    fontSize: 30.00,
                    color: Colors.red,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Text('Type the Verification code sent \n to your phone number',
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontSize: 16.00,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(otpLength, (index){
                  return SizedBox(
                    width: 40,
                    height: 40,
                    child: TextFormField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value)=>_onchanged(value,index),
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  );
                }
              ),
              ),
              SizedBox(height: 15,),
              Text('Resend OTP',style: TextStyle(
              fontSize: 14.00,
              color: Colors.grey,
            ),
            ),
            ],
          ),

        ),
      ),
    );
  }

}
