import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:speechrecognizer/screens/speech_to_text_screen.dart';
import 'package:speechrecognizer/screens/text_to_speech_screen.dart';
import 'package:speechrecognizer/src/constants.dart';


class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages=
  [
   TextToSpeechScreen(), SpeechToTextScreen()
  ];

  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color:  Color(0xff9BC1BC),
        height: 60,
        animationCurve: Curves.linear ,
        index: _selectedIndex,
        backgroundColor: kSecondColor,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });

        },

        items: [
          Icon(Icons.keyboard,color: kDarkColor,),
          Icon(Icons.record_voice_over,color: kDarkColor),
        ] ,
      ) ,
    );
  }
}
