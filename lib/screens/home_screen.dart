import 'package:e_learning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const Center(child: Text('ali kz')),
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
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50)),
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
