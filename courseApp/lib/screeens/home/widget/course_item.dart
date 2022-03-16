import 'package:datetime/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../modules/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              //color: Colors.blue,
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: kPrimaryLight,
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(course.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(course.authorImg, width: 20),
                                    SizedBox(width: 5),
                                    Text(
                                      course.author,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(children: [
                                  Text(course.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: kFont)),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: kFontLight,
                                        shape: BoxShape.circle),
                                  ),
                                  Text('2:22min',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: kFontLight)),
                                ]),
                              ])))
                ],
              )),
          Positioned(
            bottom: 65,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
