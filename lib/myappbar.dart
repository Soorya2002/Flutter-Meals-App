import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/profile.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const MyAppBar({super.key, this.showButton = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#827500'),
        leading: IconButton(
          onPressed: () {},
          icon: GestureDetector(
              onTap: () {
                if (showButton) Navigator.pop(context);
              },
              child: Image.asset('assets/Less Than.png')),
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
    );
  }
}
