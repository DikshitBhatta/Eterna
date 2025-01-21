import 'package:eterna/widgets/messageslist.dart';
import 'package:eterna/widgets/stories.dart';
import 'package:flutter/material.dart';
class Messages extends StatefulWidget{
  const Messages({super.key});
  @override
  MessagesState createState()=> MessagesState();
}

class MessagesState extends State<Messages>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.00),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Messages',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
                SizedBox(width: 10,),
                Icon(Icons.filter_alt_outlined),
              ],
            ),
            SizedBox(height: 15,),
            SizedBox(
            width: MediaQuery.of(context).size.width * 0.85, 
            child: TextField(
              decoration: InputDecoration(
                hintText:'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.00),
                  borderSide: BorderSide(color: Colors.grey)
                )
              ),
            ),
            ),
            SizedBox(height: 15,),
            Text('Activities',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Stories(),
            SizedBox(height: 15,),
            Text('Messages',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Expanded(
              child: MessagesList(),
            ),
          ],
        ),
      ),
      ),
    );
  }
}