import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class RecordingFAB extends StatelessWidget {
  final Function function;
  final bool isListening;

  RecordingFAB({this.function, this.isListening});

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      animate: isListening,
      duration: Duration(milliseconds: 2000),
      repeatPauseDuration: Duration(milliseconds: 100),
      repeat: true,
      glowColor: Colors.deepPurple,
      endRadius: 75,
      child: FloatingActionButton(
          backgroundColor: Color(0xff9BC1BC),
          child: Icon(isListening ? Icons.mic : Icons.mic_none),
          onPressed: function),
    );
  }
}
