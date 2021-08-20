import 'package:flutter/material.dart';
import '../models/magic_8_ball.dart';

class PredictorScreen extends StatefulWidget {
  PredictorScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PredictorScreenState createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  
  final magic8ball = Magic8ball();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Call Me... Maybe?',
          style: Theme.of(context).textTheme.headline4,
        ),
        GestureDetector(
          onTap: () { setState( () {magic8ball.shake();} ); },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Ask a questionnn... tap for the answer.',
              style: Theme.of(context).textTheme.headline6
            )
          )
        ),
        Text(
          '${magic8ball.currentResponse}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}