import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/widgets/category_title.dart';
import 'package:e_learning_app/widgets/course_item.dart';
import 'package:e_learning_app/widgets/emoji_text.dart';
import 'package:e_learning_app/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            CategoryTitle(
              leftText: 'Top of the week',
              rightText: 'view all',
            ),
            CourseItem(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Text(
          'Hello Ali',
          style: TextStyle(
            fontSize: 16,
            color: kFontLightColor,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
                height: 30,
              ),
            ),
            Positioned(
              top: 12,
              right: 23,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(50)),
                width: 5,
                height: 5,
              ),
            )
          ],
        )
      ],
    );
  }
}
