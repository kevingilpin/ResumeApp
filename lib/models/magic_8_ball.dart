import 'dart:math';

class Magic8ball {

  final Random random = Random();

  static const responses = [
    'Signs point to yes.',
    'My sources say no.',
    'My reply is no.',
    'Very doubtful.',
    'Most certainly, yes.',
    'We will wait and see.',
    'Who are you again?',
    'Ring, ring!'
  ];

  String _currentResponse = responses[0];

  String get currentResponse => _currentResponse;

  void shake() {
    _currentResponse = responses[random.nextInt(responses.length)];
  }

}