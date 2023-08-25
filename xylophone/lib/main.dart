import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Its Time to Enjoy',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.orange.shade700,
          ),
          backgroundColor: Colors.teal.shade700,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note1.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFF9b5fe0),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFF16a4d8),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFF60dbe8),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFF8bd346),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFFefdf48),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFFf9a52c),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.setSource(AssetSource('assests/note5.wav'));
                  await player.setVolume(5);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  color: Color(0xFFd64e12),
                ),
              ),
            ],
          )),
    );
  }
}
// Center(
// child: TextButton(
// onPressed: () async {
// final player = AudioPlayer();
// await player.play(
// AssetSource('rin.mp3'),
// );
// },
// child: Text('Click me'),
// ),
// ),
