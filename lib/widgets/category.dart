import 'package:exercises_app/constant.dart';
import 'package:exercises_app/screens/meditation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.imagePath,
    required this.label,
  });

  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MeditationScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Constant.kShadowColor,
              blurRadius: 4,
              spreadRadius: 2,
            )
          ],
          border: Border.all(
            color: Colors.black.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              width: 95,
              height: 95,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              label,
              style: TextStyle(
                color: Constant.kTextColor,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
