import 'package:flutter/material.dart';
import '../helpers/responsive_sizing.dart';

class ProfileHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(responsiveSizing(context, 40, 20)),
        child: SizedBox(
          width: responsiveSizing(context, 150, 100),
          height: responsiveSizing(context, 150, 100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(responsiveSizing(context, 75, 50)),
            child: Image.asset('assets/images/profile_avatar.jpg')
          )
        )
      )
    );
  }
}

