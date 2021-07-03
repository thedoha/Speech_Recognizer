import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speechrecognizer/src/constants.dart';


class TextToSpeechScreen extends StatelessWidget {

  static String id = 'text_to_speech_screen';

  FlutterTts _flutterTts=FlutterTts();

  TextEditingController _textEditingController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            maxLines: null,
            controller: _textEditingController,
           style: TextStyle(color: kDarkColor, ),
           decoration: InputDecoration(

             hintText: 'Enter your text to convert to speech',
             border: InputBorder.none,
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2,color: Colors.black),
                 borderRadius: const BorderRadius.all(
                     const Radius.circular(0)
                 )
             ),

             enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 2,color: kDarkColor),
                 borderRadius: const BorderRadius.all(
                     const Radius.circular(5)
                 )
             ),
           ),
          ),
        ),


          IconButton(
            color: Color(0xffED6A5A),
            iconSize: 60,
            icon:Icon(Icons.volume_up) ,
              onPressed:
              (){
                conversion(_textEditingController.text);
              }

          ),
        ],
      ),
    );
  }



   conversion(String text)
  async{
    await _flutterTts.setPitch(1);
    await _flutterTts.setLanguage('en-US');
    await _flutterTts.speak(text);


  }


}

