import 'package:flutter/material.dart';
import '../screens/business_card_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/predictor_screen.dart';

class MainTabController extends StatelessWidget {
  
  static const tabs = [
    Tab(icon: Icon(
      Icons.person,
      size: 30.0,
    )),
    Tab(icon: Icon(
      Icons.text_snippet,
      size: 30.0,
    )),
    Tab(icon: Icon(
      Icons.help,
      size: 30.0,
    ))
  ];

  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length, 
      initialIndex: 0, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Call Me Maybe'),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: screens)
      )
    );
  }
}