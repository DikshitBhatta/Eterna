import 'package:eterna/pages/bio.dart';
import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});
  @override
  Profile2State createState() => Profile2State();
}

class Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Skip',
              style: TextStyle(color: Color(0xFF5d2f52)),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 15),
            Text(
              'Additional Details',
              style: TextStyle(fontSize: 32.00, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 35),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Education Qualification',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your education qualification';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Profession',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your profession';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Religion',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Religion';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Languages',
                        hintText: 'E.g., English, Spanish',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter languages you speak';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Interests',
                        hintText: 'E.g., Reading, Traveling',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your interests';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BioPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF7b4692),
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 16.00),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
