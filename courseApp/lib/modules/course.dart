import 'package:flutter/material.dart';

class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course({
    required this.author,
    required this.authorImg,
    required this.title,
    required this.imageUrl,
  });

  static List<Course> generateCourse() {
    return [
      Course(
          author: 'John Miller',
          authorImg: 'assets/icons/avatar01.png',
          title: 'Plant',
          imageUrl: 'assets/images/course01.png'),
      Course(
          author: 'Agatha Christie',
          authorImg: 'assets/icons/avatar02.png',
          title: 'Plant',
          imageUrl: 'assets/images/course02.png'),
    ];
  }
}
