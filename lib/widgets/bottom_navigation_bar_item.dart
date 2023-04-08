import 'package:exercises_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.imagePath,
    required this.label,
    this.isActive = false,
  });

  final String imagePath;
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          width: 25,
          height: 25,
          colorFilter: ColorFilter.mode(
              isActive ? Constant.kActiveIconColor : Constant.kTextColor,
              BlendMode.srcIn),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Constant.kActiveIconColor : Constant.kTextColor,
          ),
        ),
      ],
    );
  }
}
