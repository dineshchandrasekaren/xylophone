import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}



class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Music(
              tone: 1,
              colour: Colors.red,
            ),
            Music(
              tone: 2,
              colour: Colors.orange,
            ),
            Music(
              tone: 3,
              colour: Colors.yellow,
            ),
            Music(
              tone: 4,
              colour: Colors.green,
            ),
            Music(
              tone: 5,
              colour: Colors.teal,
            ),
            Music(
              tone: 6,
              colour: Colors.blue,
            ),
            Music(tone: 7, colour: Colors.purple),
          ],
        ),
      ),
    );
  }
}



class Music extends StatelessWidget {
  final int tone;
  final Color colour;
  const Music({Key? key, this.colour = Colors.white, this.tone = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    return Expanded(
      child: GestureDetector(
        onTap: () => {player.play('note$tone.wav')},
        child: Container(
          height: 100.0,
          color: colour,
        ),
      ),
    );
  }
}
