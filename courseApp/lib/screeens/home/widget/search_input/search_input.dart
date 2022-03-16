import 'package:datetime/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Stack(
      children: [
        Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
          ),
          child: TextField(
            cursorColor: kFontLight,
            decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(28),
                border: InputBorder.none,
                hintText: 'Search for history, classes.... ',
                hintStyle: TextStyle(color: kFontLight)),
          ),
        ),
        Positioned(
          right: 45,
          top: 40,
          child: Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: kAccent,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Image.asset('assets/icons/search.png', width: 10),
          ),
        )
      ],
    ));
  }
}
