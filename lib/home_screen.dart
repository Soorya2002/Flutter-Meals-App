import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/model/container_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: HexColor('#827500'),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/cart.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.gif'),
            ),
          ),
        ],
      ),
      body: Container(
        color: HexColor('#D9D9D9'),
        // padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Select a Outlet Near You..!",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for your location!',
                      prefixIcon: const Icon(Icons.search),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(title: 'Kannur'),
                    ContainerBox(title: 'Thalassery'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(title: 'Payyannur'),
                    ContainerBox(title: 'Thaliparamba'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(title: 'Koothuparamba'),
                    ContainerBox(title: 'Eranholi'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                width: 230,
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Nothing near You ?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Find Our Collaborative Outlets",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
