import 'package:flutter/material.dart';
import 'package:meals/menu.dart';

class ContainerBox extends StatelessWidget {
  ContainerBox({super.key, required this.title});

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 145,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Image.asset(
              "assets/image 1.png",
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
