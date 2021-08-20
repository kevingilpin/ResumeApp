import 'package:flutter/material.dart';
import '../helpers/responsive_sizing.dart';
import '../styles.dart';

class BizCardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: responsiveSizing(context, 20, 10)
          ),
          child: Text(
            'Kevin Gilpin',
            style: Styles.bizCardHeader,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: responsiveSizing(context, 30, 20)),
          child: Text(
            'Developer Extraordinaire',
            style: Styles.subHeading,
          ),
        )
      ]
    );
  }
}