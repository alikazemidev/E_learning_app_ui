import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  var course = Course.courseList[0];
  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    return Container(
      child: Stack(
        children: [
          Container(
            height: 260,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                course.authorImage,
                                width: 20,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              course.author,
                              style: textStyle.bodyMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: textStyle.displayMedium,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kFontLightColor,
                              ),
                            ),
                            Text(
                              '2h 22min',
                              style: textStyle.displaySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:kAccentColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ) 
              ),
              onPressed: () {},
              child: Text('start'),
            ),
          ),
        ],
      ),
    );
  }
}
