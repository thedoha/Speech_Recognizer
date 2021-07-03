import 'package:flutter/material.dart';


class ConfidenceCard extends StatelessWidget {


  final double confidence;


  ConfidenceCard({this.confidence});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(50),
      child: Text('confdience: ${((confidence*100).toStringAsFixed(1)).toString()} %',
        style: TextStyle(color: Color(0xffED6A5A),fontSize: 25,fontWeight: FontWeight.w600),

      ),
    );
  }
}
