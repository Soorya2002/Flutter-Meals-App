import 'package:flutter/material.dart';
import 'package:meals/courses.dart';

class MenuBox extends StatelessWidget {
  const MenuBox({super.key, required this.menuTitle});

  final menuTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Courses()));
      },
      child: Container(
        width: 141,
        height: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/Rectangle 8.png",
                  width: 117,
                  height: 117,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 90,
                    left: 15,
                  ),
                  child: Container(
                    width: 90,
                    height: 23,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text(
                        menuTitle,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
