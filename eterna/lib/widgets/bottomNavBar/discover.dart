import 'package:flutter/material.dart';
class Discover extends StatefulWidget{
  const Discover({super.key});
  @override
  DiscoverState createState()=> DiscoverState();
}

class DiscoverState extends State<Discover>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(child: Center(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){},
                  child: Image(image: AssetImage('assets/subs.png'),height: 50.00,width: 50.00,fit: BoxFit.cover,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Discover',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                    Text('Chiago II',style: TextStyle(color: Colors.grey,fontSize: 16),),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined),iconSize: 30.00,color: Colors.grey,),
              ],
            ),
            Expanded(  // Wrap PageView with Expanded
              child: PageView.builder(
                itemCount: 3,  // Number of profiles
                itemBuilder: (context, index) {
                  final profiles = [
                    {'name': 'John Doe', 'image': 'assets/onbording/img3.png'},
                    {'name': 'Sita Ram', 'image': 'assets/onbording/img2.png'},
                    {'name': 'Gita', 'image': 'assets/onbording/image1.png'},
                  ];
                  
                  return Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(158, 158, 158, 0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(profiles[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              profiles[index]['name']!,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Profession',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.00),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.close),iconSize: 40.00,color: Colors.red,),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.00),
                    color: Colors.red.shade700,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.5), // Replace withOpacity
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.heart_broken),iconSize: 40.00,color: Colors.white,),
                ),
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.00),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(158, 158, 158, 0.2), // Replace withOpacity
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.star),iconSize: 40.00,color: Colors.red,),
                )
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