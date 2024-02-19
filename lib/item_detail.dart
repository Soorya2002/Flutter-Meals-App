import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/courses.dart';
import 'package:meals/model/button.dart';
import 'package:meals/myappbar.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 23,
                ),
                Image.asset(
                  'assets/Rectangle 16.png',
                  width: 140,
                  height: 140,
                ),
                SizedBox(
                  width: 23,
                ),
                Image.asset(
                  'assets/Rectangle 17.png',
                  width: 140,
                  height: 140,
                ),
                SizedBox(
                  width: 23,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/Rectangle 18.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Hot & Sour Chicken Soup",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chinese Cusine",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 137, 32, 78),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "100% Non-Veg",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 137, 32, 78),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, right: 10),
                    child: Image.asset(
                      'assets/Frame 17.png',
                      width: 36,
                      height: 36,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Description",
                  style: TextStyle(
                    color: HexColor('#645A02'),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Hot and Sour Chicken Soup: A fiery blend of tender chicken, mushrooms, bamboo shoots, carrots, and bell peppers in a rich broth. With a tantalizing mix of soy sauce, rice vinegar, and chili paste, this soup delivers a perfect balance of heat and tang. A deliciously satisfying culinary adventure in every spoonful.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    const Text(
                      "Add this Item",
                      style: TextStyle(
                        color: Color.fromARGB(255, 137, 32, 78),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Button()
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 256,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(129, 116, 0, 1.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Courses()));
                    },
                    child: Text(
                      'Add More Dishes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
