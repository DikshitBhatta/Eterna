import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessagesList extends StatefulWidget{
  const MessagesList({super.key});
  @override
  MessagesListState createState()=> MessagesListState();
}

class MessagesListState extends State<MessagesList>{
  @override
  Widget build (BuildContext context){
    return SafeArea(
       child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.00),
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/onbording/img3.png'),
              ),
              title: Text('Name'),
              subtitle: Text('Message'),
              trailing: Text('Time'),
            );
          },
        ),
    );
  }
  
}