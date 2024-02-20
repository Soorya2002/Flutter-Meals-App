import 'package:flutter/material.dart';
import 'package:meals/data/appetizer_data.dart';
import 'package:meals/model/appetizer_box.dart';
import 'package:meals/myappbar.dart';
import 'package:meals/payment.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: appetizerData.length + 1,
              itemBuilder: (context, index) {
                if (index < appetizerData.length) {
                  final item = appetizerData[index];
                  return AppetizerBox(
                    itemName: item.ititle,
                    imageUrl: item.img,
                    quantity: quantity,
                    showButton: true,
                    boxHeight: 122,
                    imageWidth: 106,
                    imageHeight: 105,
                  );
                } else {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 25),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color((0xff817400)),
                            minimumSize: Size(256, 44)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        child: Text(
                          'CONTINUE to PAYMENT',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  );
                }
                // final item = appetizerData[index];
                // return AppetizerBox(
                //   itemName: item.ititle,
                //   imageUrl: item.img,
                //   quantity: quantity,
                //   showButton: true,

                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
