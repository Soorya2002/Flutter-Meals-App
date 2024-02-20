import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Color buttonColor;
  final Color iconColor;

  const Button({super.key, required this.buttonColor, required this.iconColor});

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
            color: widget.buttonColor,
          ),
          child: IconButton(
            onPressed: _decreaseQuantity,
            icon: Icon(Icons.remove, size: 13),
            color: widget.iconColor,
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: BoxDecoration(
            color: widget.buttonColor,
          ),
          child: Center(
            child: Text(
              '$quantity',
              style: TextStyle(
                color: widget.iconColor,
              ),
            ),
          ),
        ),
        Container(
          width: 25,
          height: 26,
          decoration: BoxDecoration(
            color: widget.buttonColor,
          ),
          child: IconButton(
            onPressed: _increaseQuantity,
            icon: Icon(
              Icons.add,
              size: 13,
              color: widget.iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
