import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void onPressedPlay(int audioNumber){
    final audioCache = AudioCache();
    audioCache.play('note$audioNumber.wav', mode: PlayerMode.LOW_LATENCY);
  }

  Expanded playAudio(Color color, int audioNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
        ),
        onPressed: (){
          onPressedPlay(audioNumber);
        },
      ),
    );
  }

  SizedBox sizedBox(){
    return SizedBox(
      height: 4.0,
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone App'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              sizedBox(),
              playAudio(Colors.red, 1),
              sizedBox(),
              playAudio(Colors.orange, 2),
              sizedBox(),
              playAudio(Colors.yellow, 3),
              sizedBox(),
              playAudio(Colors.green, 4),
              sizedBox(),
              playAudio(Colors.blue, 5),
              sizedBox(),
              playAudio(Colors.teal[700], 6),
              sizedBox(),
              playAudio(Colors.indigo, 7),
              sizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
