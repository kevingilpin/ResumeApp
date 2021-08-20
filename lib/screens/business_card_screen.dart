import 'package:flutter/material.dart';
import 'dart:core';
import '../components/profile_hero.dart';
import '../components/biz_card_header.dart';
import '../components/contact_info.dart';

class BusinessCardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ProfileHero(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(children: [
              BizCardHeader(),
              ContactInfo()
            ],)
          )
        ]
      )
    );
  }
}