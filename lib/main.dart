import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    ));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 11,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.sort,
                          size: 37,
                          color: Colors.white,
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 130,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(28)),
                                child: Icon(
                                  Icons.computer,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'UI Design',
                                      style: TextStyle(
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.people,
                                              size: 22,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '18k',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '4.3',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '\$70',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Course Content',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              letterSpacing: 0.8),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Course(
                          num: '01',
                          title: 'Welcome to the course',
                          time: '4:30 mins',
                        ),
                        Course(
                          num: '02',
                          title: 'Design thinking - intro',
                          time: '17:09 mins',
                        ),
                        Course(
                          num: '03',
                          title: 'Design thinking progress',
                          time: '10:18 mins',
                        ),
                        Course(
                          num: '04',
                          title: 'Customers perspective',
                          time: '23:05 mins',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Load more',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              )),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Purchase Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white30,
                              size: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class Course extends StatelessWidget {
  final String num;
  final String title;
  final String time;
  const Course({
    Key key,
    this.num,
    this.title,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '$num',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$time',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 41,
            width: 41,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Icon(
              Icons.play_arrow_outlined,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
