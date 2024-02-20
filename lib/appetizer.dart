import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/data/appetizer_data.dart';
import 'package:meals/model/appetizer_box.dart';
import 'package:meals/myappbar.dart';

class Appetizer extends StatefulWidget {
  const Appetizer({Key? key}) : super(key: key);

  @override
  State<Appetizer> createState() => _AppetizerState();
}

class _AppetizerState extends State<Appetizer> {
  int quantity = 0;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: const Text(
              "Appetizers",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: appetizerData.length,
              itemBuilder: (context, index) {
                final item = appetizerData[index];
                return AppetizerBox(
                  itemName: item.ititle,
                  imageUrl: item.img,
                  quantity: quantity,
                  showButton: false,
                  rPadding: 0,
                  // onIncrease: _increaseQuantity,
                  // onDecrease: _decreaseQuantity,
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
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
          )
        ],
      ),
    );
  }
}
