import 'package:datetime/constants/colors.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'Lets boost\nyour brain!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: kFont,
            ),
          ),
          TextSpan(text: '  ✨', style: TextStyle(fontSize: 26)),
        ])));
  }
}
