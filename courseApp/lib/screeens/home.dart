import 'package:datetime/constants/colors.dart';
import 'package:datetime/modules/course.dart';
import 'package:datetime/screeens/home/widget/active_course.dart';
import 'package:datetime/screeens/home/widget/emoji_text.dart';
import 'package:flutter/material.dart';

import 'home/widget/category_title.dart';
import 'home/widget/course_item.dart';
import 'home/widget/feature_course.dart';
import 'home/widget/search_input/search_input.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            activeCourse(),
          ],
        ),
      ),
    );
  }

  AppBar _AppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello Friend!',
          style: TextStyle(fontSize: 16, color: kFontLight),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: kAccent,
                    shape: BoxShape.circle,
                  ),
                ))
          ],
        )
      ],
    );
  }
}
