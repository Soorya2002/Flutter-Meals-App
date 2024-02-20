import 'package:flutter/material.dart';
import 'package:meals/item_detail.dart';
import 'package:meals/model/button.dart';

class AppetizerBox extends StatelessWidget {
  final String itemName;
  final String imageUrl;
  final int quantity;
  final bool showButton;
  final double boxHeight;
  final double imageWidth;
  final double imageHeight;
  final double rPadding;

  const AppetizerBox({
    super.key,
    required this.itemName,
    required this.imageUrl,
    required this.quantity,
    this.showButton = true,
    this.boxHeight = 80,
    this.imageWidth = 81,
    this.imageHeight = 68,
    this.rPadding = 8,
    // required this.onIncrease,
    // required this.onDecrease
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ItemDetail()));
          },
          child: Container(
            width: 345,
            height: boxHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            itemName,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Qty",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Button(
                            buttonColor: Color.fromRGBO(217, 217, 217, 1.0),
                            iconColor: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Spacer(),
                          if (showButton)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Remove Item',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: rPadding),
                  child: Image.asset(
                    imageUrl,
                    width: imageWidth,
                    height: imageHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
