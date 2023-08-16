import 'package:e_learning_app/models/course.dart';
import 'package:e_learning_app/widgets/category_title.dart';
import 'package:e_learning_app/widgets/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.courseList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle(
          leftText: 'Top of the week',
          rightText: 'view all',
        ),
        Container(
          height: 310,
          child: ListView.separated(
            padding: EdgeInsets.all(25),
            separatorBuilder: (context, index) => SizedBox(width: 15),
            scrollDirection: Axis.horizontal,
            itemCount: courseList.length,
            itemBuilder: (BuildContext context, int index) {
              return CourseItem(
                indexItem: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
