// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logo;
  final int hourlyRate;

  JobCard(
      {super.key,
      required this.companyName,
      required this.jobTitle,
      required this.logo,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 200,
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Image.asset(logo),
                    ),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                       child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Part Time', style: TextStyle(color: Colors.white),),
                          ),
                          color: Colors.grey[500],
                        ),
                     ),
                  
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(jobTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, bottom: 8),
                  child: Text(hourlyRate.toString()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
