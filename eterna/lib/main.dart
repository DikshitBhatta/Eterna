import 'package:flutter/material.dart';
import 'package:eterna/pages/onbording.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eterna',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Onbording(),
    );
  }
}