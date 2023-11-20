import 'package:flutter/material.dart';

class RecentJob extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logo;
  final int hourlyRate;
  RecentJob(
      {super.key,
      required this.companyName,
      required this.jobTitle,
      required this.logo,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50,
                    child: Image.asset(logo),
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      child: Text(
                        companyName,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: 45,
                  color: Colors.green[300],
                    padding: EdgeInsets.all(5),
                    child: Text(hourlyRate.toString(), style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)))
          ],
        ),
      ),
    );
  }
}
