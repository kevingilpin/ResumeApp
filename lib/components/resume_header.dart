import 'package:flutter/material.dart';
import 'package:myapp/helpers/responsive_sizing.dart';
import '../styles.dart';

class ResumeHeader extends StatelessWidget {

  final String name, email, url;

  const ResumeHeader({
    Key key, 
    this.name,
    this.email,
    this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                name,
                style: Styles.bizCardHeader,
              ),
            ),
            Wrap(
              direction: responsiveOptions(context, Axis.vertical, Axis.horizontal),
              children: [
                Text(email),
                SizedBox(width: 100, height: 15),
                Text(url)
              ],
            )
          ]
        )
      )
    );
  }
}