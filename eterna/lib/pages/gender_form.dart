import 'package:eterna/pages/friend_page.dart';
import 'package:flutter/material.dart';

class GenderForm extends StatefulWidget{
  const GenderForm({super.key});
  @override
  GenderFormState createState()=> GenderFormState();
}
class GenderFormState extends State<GenderForm>{
  String? _selectedGender;
  final List<String> _gender=['Female','Male','Other'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Skip',style: TextStyle(color: Color(0xFF5d2f52)),textAlign: TextAlign.right,),
              SizedBox(height: 45,),
              Text('I am a',style: TextStyle(fontSize: 32.00,fontWeight: FontWeight.bold),),
              SizedBox(height: 75,),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ListView.builder(
                    itemCount: _gender.length,
                    itemBuilder: (context,index){
                      final gender=_gender[index];
                      final isSelected=_selectedGender == gender;
                      return GestureDetector(
                        onTap: (){
                          setState((){
                            _selectedGender=gender;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.purple : Colors.transparent,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: isSelected ? Colors.purple : Colors.grey,
                            ),
                          ),
                          child: Text(
                            gender,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>FriendPage()));
              },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0XFF7b4692),
               ),
               child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 16.00),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}