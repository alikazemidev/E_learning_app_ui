import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        'Let\'s boost your \nbrain power ✨',
        style: textStyle.bodyLarge,
      ),
    );
  }
}
