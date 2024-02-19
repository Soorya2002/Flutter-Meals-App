import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/model/menu_box.dart';
import 'package:meals/profile.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#827500'),
        leading: IconButton(
          onPressed: () {},
          icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/Less Than.png')),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.gif'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: const Text(
              "Select a Menu Category",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuBox(
                    menuTitle: 'Non-Veg',
                  ),
                  MenuBox(
                    menuTitle: 'Veg',
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuBox(
                    menuTitle: 'Mixed',
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: const Center(
                  child: Text(
                    "Customize Menu",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              const Text(
                "Powered by",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                'assets/imiot.png',
                width: 115,
                height: 64,
              )
            ],
          ),
        ],
      ),
    );
  }
}
