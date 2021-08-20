import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../helpers/responsive_sizing.dart';

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: responsiveOptions(context, Axis.vertical, Axis.horizontal),
      children: [
        GestureDetector(
          onTap: () { _safeLaunch('sms:9490111234'); },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.phone,
                  size: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('333 333 4444')
                )
              ]
            )
          )
        ),
        GestureDetector(
          onTap: () { _safeLaunch('https://github.com/profile'); },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.laptop,
                  size: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('github.com/profile')
                )
              ]
            )
          )
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.mail_outline,
              size: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('email@fake.com')
            )
          ]
        )
      ],
    );
  }
}

void _safeLaunch(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}