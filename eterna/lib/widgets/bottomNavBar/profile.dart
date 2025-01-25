import 'package:eterna/widgets/profile/gallery.dart';
import 'package:eterna/widgets/profile/about_me.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  ProfileState createState()=> ProfileState();
}

class ProfileState extends State<Profile>{
  bool showAbout = true;
  void toggleview(bool showAbout){
    setState(() {
      this.showAbout=showAbout;
    });
  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              automaticallyImplyLeading: false, 
              flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/menmodel/menmodel1.jpg'),
                fit: BoxFit.cover,
              ),
              ),
            actions:<Widget>[
             IconButton(
                onPressed: (){},
                icon: Icon(Icons.edit,color:Colors.black,),
                ),
            ],
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.00),
                    topRight: Radius.circular(30.00)
                  ),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.00),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20.00,),
                      Text('John Doe',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                      SizedBox(height: 10.00,),
                      Text('Wallah! Welcome to profile',textAlign: TextAlign.center,),
                      SizedBox(height: 20.00,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      TextButton(
                        onPressed: (){
                          toggleview(true);
                        },
                        child: Text('About me',style: TextStyle(color: Colors.black)),
                        ),
                      TextButton(
                        onPressed: (){
                          toggleview(false);
                        },
                        child: Text('Gallery',style: TextStyle(color: Colors.black),),
                        ),
                      ],
                      ),
                      SizedBox(height: 20.00,),
                      showAbout
                        ? AboutMe()
                        : Gallery(),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}