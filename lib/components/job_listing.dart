import 'package:flutter/material.dart';
import 'package:myapp/styles.dart';

class JobListing extends StatelessWidget {

  final String title, company, startDate, endDate, city, state, description;

  const JobListing({
    Key key, 
    this.title, 
    this.company, 
    this.startDate, 
    this.endDate, 
    this.city, 
    this.state, 
    this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Text(
              '$title, $company',
              style: Styles.subHeading
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$city, $state'),
                  Text('$startDate - $endDate')
                ]
              ),
            ),
            Text(description)
          ]
        )
      )
    );
  }
}