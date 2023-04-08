import 'package:exercises_app/constant.dart';
import 'package:exercises_app/widgets/bottom_navigation_bar_item.dart';
import 'package:exercises_app/widgets/category.dart';
import 'package:exercises_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationBarItem(
              imagePath: 'assets/icons/calendar.svg',
              label: 'Today',
            ),
            CustomBottomNavigationBarItem(
              imagePath: 'assets/icons/gym.svg',
              label: 'All Exercises',
              isActive: true,
            ),
            CustomBottomNavigationBarItem(
              imagePath: 'assets/icons/Settings.svg',
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning\nUser 👋',
                    style: TextStyle(
                      color: Constant.kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      Category(
                        imagePath: 'assets/icons/Hamburger.svg',
                        label: 'Diet Recommendation',
                      ),
                      Category(
                        imagePath: 'assets/icons/Excrecises.svg',
                        label: 'Kegel Exercises',
                      ),
                      Category(
                        imagePath: 'assets/icons/Meditation.svg',
                        label: 'Meditation',
                      ),
                      Category(
                        imagePath: 'assets/icons/yoga.svg',
                        label: 'Yoga',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
