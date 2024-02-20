import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/cart.dart';
import 'package:meals/model/container_box.dart';
import 'package:meals/profile.dart';
import 'package:meals/sorry.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: HexColor('#827500'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
          icon: Image.asset('assets/cart.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.gif'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
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
                    controller: _textController,
                    onSubmitted: (value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sorry()));
                    },
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
