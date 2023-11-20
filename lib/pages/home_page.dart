// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/utils/card.dart';
import 'package:ui/utils/recent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List Jobs = [
    ['Uber', 'Designer', 'lib/icons/uber.png', 45],
    ['Apple', 'Developer', 'lib/icons/apple.png', 50],
    ['Google', 'Software Engg', 'lib/icons/google.png', 40],
  ];
  final List recent = [
    ['Nike', 'Designer', 'lib/icons/nike.png', 45],
    ['Apple', 'Developer', 'lib/icons/apple.png', 50],
    ['Google', 'Software Engg', 'lib/icons/google.png', 40],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(8),
                height: 50,
                child: Image.asset(
                  'lib/icons/menu.png',
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            child: Image.asset('lib/icons/search.png'),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here!"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  padding: EdgeInsets.all(12),
                  child: Image.asset(
                    'lib/icons/settings.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'For You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: Jobs[index][0],
                  hourlyRate: Jobs[index][3],
                  jobTitle: Jobs[index][1],
                  logo: Jobs[index][2],
                );
              },
              itemCount: Jobs.length,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Recently added',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return RecentJob(
                    companyName: recent[index][0],
                    hourlyRate: recent[index][3],
                    jobTitle: recent[index][1],
                    logo: recent[index][2],
                  );
                },
                itemCount: recent.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
