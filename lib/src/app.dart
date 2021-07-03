import 'package:flutter/material.dart';
import 'package:speechrecognizer/screens/speech_to_text_screen.dart';
import 'package:speechrecognizer/screens/tabs_screen.dart';
import 'package:speechrecognizer/screens/text_to_speech_screen.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen() ,
      routes: {
        SpeechToTextScreen.id:(context)=>SpeechToTextScreen(),
        TextToSpeechScreen.id:(context)=>TextToSpeechScreen()
      },
    );
  }
}
