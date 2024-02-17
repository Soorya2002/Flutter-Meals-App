import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/data/appetizer_data.dart';
import 'package:meals/model/appetizer_box.dart';

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
      appBar: AppBar(
        backgroundColor: HexColor('#827500'),
        leading: IconButton(
          onPressed: () {},
          icon: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/Less Than.png'),
          ),
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
        width: double.infinity,
        height: double.infinity,
        color: HexColor('#D9D9D9'),
        padding: const EdgeInsets.all(19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Appetizers",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
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
                    onIncrease: _increaseQuantity,
                    onDecrease: _decreaseQuantity,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
