import 'package:eterna/pages/gender_form.dart';
import 'package:flutter/material.dart';

class BioPage extends StatefulWidget {
  const BioPage({super.key}) ;

  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();

  @override
  void dispose() {
    _bioController.dispose();
    _aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Edit Bio',style: TextStyle(fontSize: 32.00,fontWeight: FontWeight.bold),),
            TextField(
              controller: _bioController,
              maxLength: 22,
              decoration: const InputDecoration(
                labelText: 'Bio',
                hintText: 'Enter your short bio',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _aboutController,
              maxLength: 112,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: 'About Me',
                hintText: 'Tell us more about yourself',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GenderForm()));
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
      ),
    );
  }
}
