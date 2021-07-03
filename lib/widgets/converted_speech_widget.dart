import 'package:flutter/material.dart';
import 'package:speechrecognizer/src/constants.dart';


class ConvertedSpeech extends StatelessWidget {

  final String resultText;


  ConvertedSpeech({this.resultText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        width: double.infinity,
        padding: EdgeInsets.only(right:4,left: 4),

        decoration: BoxDecoration(
            color: Color(0xffED6A5A),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(55),
              bottomLeft: Radius.circular(55),
            )
        ),



        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xffF4F1BB),
              borderRadius: BorderRadius.only(topRight: Radius.circular(50),
                  bottomLeft:Radius.circular(50) )
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Text(resultText,textDirection: TextDirection.ltr,
              style: TextStyle(color: kDarkColor,
                  fontSize:25,fontWeight: FontWeight.w700 ),),
          ),
        ),
      ),
    );
  }
}
