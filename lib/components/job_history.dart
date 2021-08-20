import 'package:flutter/material.dart';
import '../components/job_listing.dart';

class JobHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: _createJobHistory());
  }
}

List<Widget> _createJobHistory() {
  return new List<Widget>.generate(7, (int index) {
    return JobListing(
            title: 'Software Engineer',
            company: 'Facebook',
            startDate: '2019',
            endDate: 'Present',
            city: 'Menlo Park',
            state: 'CA',
            description: 
              'Led the development for the Call Me Maybe app with over 1 million downloads.'
              + 'Refactored entire codebase savings hundreds of hours.'
              + 'Built prototype for new Facebook app, eventually leading to billions in revenue.'
            ,
          );
  });
}