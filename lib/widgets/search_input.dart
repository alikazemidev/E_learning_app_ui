import 'package:e_learning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Stack(
        children: [
          TextField(
            cursorColor: kFontLightColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: kFontLightColor.withOpacity(0.1),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(18),
              hintText: 'search for history,classes,...',
              hintStyle: TextStyle(
                color: kFontLightColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kFontLightColor.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kFontLightColor.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 15,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: kAccentColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
