import 'package:flutter/material.dart';

class AppetizerBox extends StatelessWidget {
  final String itemName;
  final String imageUrl;
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const AppetizerBox(
      {super.key,
      required this.itemName,
      required this.imageUrl,
      required this.quantity,
      required this.onIncrease,
      required this.onDecrease});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 340,
          height: 77,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            children: [
              Text(
                itemName,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Image.asset(
                imageUrl,
                width: 81,
                height: 68,
              ),
              Column(
                children: [
                  const Text(
                    "Qty",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: onDecrease,
                        icon: Icon(Icons.remove),
                      ),
                      Text('$quantity'),
                      IconButton(
                        onPressed: onIncrease,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
