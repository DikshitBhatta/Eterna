import 'package:eterna/widgets/match_container.dart';
import 'package:flutter/material.dart';
class Matches extends StatefulWidget{
  const Matches({super.key});
  @override
  MatchesState createState()=> MatchesState();
}

class MatchesState extends State<Matches>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Matches', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
                    SizedBox(width: 10),
                    Icon(Icons.filter_alt_outlined),
                  ],
                ),
                SizedBox(height: 15),
                Text('This is a list of people who have liked you and \n your matches', textAlign: TextAlign.left),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: Divider(color: Colors.black, thickness: 1)),
                        Text('  Today  ', style: TextStyle(color: Colors.black)),
                        Expanded(child: Divider(color: Colors.black, thickness: 1)),
                      ],
                    ),
                    SizedBox(height: 15), 
                    Tiles(),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(child: Divider(color: Colors.black, thickness: 1)),
                        Text('  Yesterday  ', style: TextStyle(color: Colors.black)),
                        Expanded(child: Divider(color: Colors.black, thickness: 1)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Tiles(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}