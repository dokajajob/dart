import 'package:flutter/material.dart';

import '../../../modules/course.dart';
import 'category_title.dart';
import 'course_item.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'view all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(18),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (context, index) => SizedBox(width: 15),
            ),
          ),
        ],
      ),
    );
  }
}
