import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
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
    return Row(
      children: [
        Container(
          width: 25,
          height: 26,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
          ),
          child: IconButton(
            onPressed: _decreaseQuantity,
            icon: Icon(Icons.remove, size: 13),
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
          ),
          child: Center(
            child: Text('$quantity'),
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
          ),
          child: IconButton(
            onPressed: _increaseQuantity,
            icon: Icon(
              Icons.add,
              size: 13,
            ),
          ),
        ),
      ],
    );
  }
}
