import 'package:dribble_01/utils/emoticon_faces.dart';
import 'package:dribble_01/utils/excersise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 28,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Column(
          //Hi Name

          // Greetings Row
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Jared!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                '23 Jan 2022',
                                style: TextStyle(
                                  color: Colors.blue[100],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          //Notification
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      //Search Bar
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(children: [
                          Icon(
                            Icons.search,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      //How Do you Feel?

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),

                      SizedBox(
                        height: 24,
                      ),

                      //Emojis

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //sad
                          Column(
                            children: [
                              EmotiCon(emoticonFace: '😔'),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Badly',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),

                          //smile

                          Column(
                            children: [
                              EmotiCon(emoticonFace: '😊'),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Fine',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),

                          //happy

                          Column(
                            children: [
                              EmotiCon(emoticonFace: '😁'),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Well',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),

                          //gag

                          Column(
                            children: [
                              EmotiCon(emoticonFace: '😃'),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Excellent',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Excersises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      //list view of excersises

                      Expanded(
                        child: ListView(
                          children: [
                            ExcersiseTile(
                              icon: Icons.favorite,
                              titleName: 'Speaking skills',
                              subtitleName: '16 Exercises',
                              bg_color: Colors.orange,
                            ),
                            ExcersiseTile(
                              icon: Icons.person,
                              titleName: 'Reading speed',
                              subtitleName: '8 Exercises',
                              bg_color: Colors.blue[700],
                            ),
                            ExcersiseTile(
                              icon: Icons.star,
                              titleName: 'Writing skills',
                              subtitleName: '10 Exercises',
                              bg_color: Colors.pink,
                            ),
                          ],
                        ),
                      )
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
