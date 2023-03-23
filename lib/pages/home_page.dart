import 'package:flutter/material.dart';

import '../util/emoticon_face.dart';
import '../util/exercise.dart';

class HomePage extends StatefulWidget {
  @override
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: ''),
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //// Hi Hussein
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Hussein',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23, march, 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      //// Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  //search bar

                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'how do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonface: '😞',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //fine

                      Column(
                        children: [
                          EmoticonFace(emoticonface: '😊'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //well

                      Column(
                        children: [
                          EmoticonFace(emoticonface: '😏'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //excellent

                      Column(
                        children: [
                          EmoticonFace(emoticonface: '🤪'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Exercises',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.more_horiz,)
                        ],),
                        SizedBox(height:20 ,),
                        Expanded(child: ListView(
                          children: [
                            Ecercise(icon:Icons.favorite ,
                                color4icon:Colors.orange ,
                                exercise_name:'Speacking Skils' ,
                                number_of_exercise: 15),
                            Ecercise(icon:Icons.directions_walk ,
                                color4icon:Colors.blue ,
                                exercise_name:'Walking' ,
                                number_of_exercise: 20),
                            Ecercise(icon:Icons.directions_run ,
                                color4icon:Colors.redAccent ,
                                exercise_name:'Run' ,
                                number_of_exercise: 15),
                            Ecercise(icon:Icons.read_more ,
                                color4icon:Colors.cyan ,
                                exercise_name:'Reading' ,
                                number_of_exercise: 15),
                          ],
                        )),
                      ],
                    ),
                  )),
            ),
          ],
        )));
  }
}
