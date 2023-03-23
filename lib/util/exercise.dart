import 'package:flutter/material.dart';

class Ecercise extends StatelessWidget {
  final icon;
  final String exercise_name;
  final int number_of_exercise;
final color4icon;

  const Ecercise({
    Key?key,
    required this.icon,
    required this.exercise_name,
    required this.number_of_exercise,
    required this.color4icon
});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(bottom:12 ),
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child:
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color:color4icon,
                padding: EdgeInsets.all(16),
                child: Icon(icon,
                    color: Colors.white),
              ),),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exercise_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 5,),
                Text(number_of_exercise.toString()+' Exercises',style: TextStyle(color: Colors.grey),),
              ],),
          ],),
          Icon(Icons.more_horiz),
        ],
      ),
      // ListTile(
      //   leading: Icon(Icons.favorite,),
      //   title: Text('Speacking Skills'),
      //   subtitle: Text('15 Exercises'),
      // ),
    ),
    );
  }
}
