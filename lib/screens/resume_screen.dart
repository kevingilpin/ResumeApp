import 'package:flutter/material.dart';
import '../components/resume_header.dart';
import '../helpers/responsive_sizing.dart';
import '../components/job_history.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveSizing(context, 30, 50)),
        child: Column(children: [
          ResumeHeader(
            name: 'Kevin Gilpin',
            email: 'gilpink@oregonstate.edu',
            url: 'github.com/kevingilpin'
          ),
          JobHistory(),
        ],)
      )
    );
  }
}