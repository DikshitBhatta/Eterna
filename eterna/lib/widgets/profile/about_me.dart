import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> interests = ['Travel', 'Photography', 'Reading', 'Cooking', 'Music'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
      Text(
        '''Hi! I'm John Doe. I've been bitten by the travel bug hard and have spent the last few months making my way around (insert location). I feel most at home when I'm exploring different places and immersing myself in the rich culture and history of other countries. My work allows me to travel, which I'm super grateful for, and I'd love to meet you if you're up for an adventure!'''
      ),
      SizedBox(height: 15,),
      Text('Date of Birth: 01/01/1990'),
      SizedBox(height: 15,),
      Text('Height: 5\'11"'),
      SizedBox(height: 15,),
      Text('Gender: Man'),
      SizedBox(height: 15,),
      Text('Education: Bachelors in Computer Science'),
      SizedBox(height: 15,),
      Text('Profession: Software Engineer'),
      SizedBox(height: 15,),
      Text('Location: New York, USA'),
      SizedBox(height: 15,),
      Text('Religion: Christian'),
      SizedBox(height: 15,),
      Text('Languages: English, Spanish, French'),
      SizedBox(height: 15,),
      Text('Interests:',style: TextStyle(fontWeight: FontWeight.w500),),
      SizedBox(height: 15,),
      GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 2.5,
          ),
          itemCount: interests.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.00),
              ),
              alignment: Alignment.center,
              child: Text(interests[index]),
            );
          },
        ),
      ],
    );
  }
}
