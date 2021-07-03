import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speechrecognizer/src/constants.dart';
import 'package:speechrecognizer/widgets/confidence_widget.dart';
import 'package:speechrecognizer/widgets/converted_speech_widget.dart';
import 'package:speechrecognizer/widgets/recording_fab_widget.dart';


class SpeechToTextScreen extends StatefulWidget {

  static String id = 'speech_to_text_screen';

  @override
  _SpeechToTextScreenState createState() => _SpeechToTextScreenState();
}

class _SpeechToTextScreenState extends State<SpeechToTextScreen> {


  stt.SpeechToText _speech;
  String resultText = "your speech will appear here";
  bool _isListening=false;
  double _confidence=1;


  @override
  void initState() {
    super.initState();
    _speech=stt.SpeechToText();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RecordingFAB(function:listen ,isListening: _isListening,),
      body:  SingleChildScrollView(
        child: Container(
          width: double.infinity,

          child: Container(

            margin: EdgeInsets.only(top: 60),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                ConfidenceCard(confidence: _confidence,),

                ConvertedSpeech(resultText: resultText,)


              ],
            ),
          ),
        ),
      ),
    );
  }



  void listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            resultText = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}

