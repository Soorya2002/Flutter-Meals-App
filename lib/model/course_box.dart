import 'package:flutter/material.dart';
import 'package:meals/data/course_data.dart';
import 'package:meals/appetizer.dart';

class CourseBox extends StatelessWidget {
  const CourseBox({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> courseItems = [];

    for (var ctitle in courseData) {
      courseItems.add(
        Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Appetizer()));
                },
                child: Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ctitle.name,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          ctitle.imagePath,
                          width: 61,
                          height: 51,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }
    return Column(
      children: courseItems,
    );
  }
}

    // return Center(
    //   child: Column(
    //     children: [
    //       Container(
           
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Text(
    //                 courseTitle,
    //                 style: const TextStyle(
    //                   fontSize: 17,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             Spacer(),
    //             Image.asset(
    //               "assets/Rectangle 8.png",
    //               width: 61,
    //               height: 51,
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //     ],
    //   ),
    // );
//   }
// }
