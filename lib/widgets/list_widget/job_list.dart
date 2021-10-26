import 'package:flutter/material.dart';
import 'package:starter/app/data/models/dto/job.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/theme/styles.dart';

class JobList extends StatelessWidget {
  final Job jobs;

  JobList({required this.jobs});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            jobs.title,
            style: Styles.tsPrimaryColorBold18,
            textAlign: TextAlign.start,
          ),
          Text(
            Strings.jobLocation(jobs.location),
            style: Styles.tsPrimaryColorRegular18,
            textAlign: TextAlign.start,
          ),
          Text(
            jobs.description,
            style: Styles.tsPrimaryColorRegular16,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
