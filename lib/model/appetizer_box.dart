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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      itemName,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Qty",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                              ),
                              child: IconButton(
                                onPressed: onDecrease,
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
                                onPressed: onIncrease,
                                icon: Icon(
                                  Icons.add,
                                  size: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                      // Container(
                      //   width: 25,
                      //   height: 26,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xffd9d9d9),
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(bottom: 10, right: 10),
                      //     child: IconButton(
                      //       onPressed: onDecrease,
                      //       icon: Icon(
                      //         Icons.remove,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(width: 8),
                      // Container(
                      //   width: 25,
                      //   height: 26,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xffd9d9d9),
                      //   ),
                      //   child: Text('$quantity'),
                      // ),
                      // SizedBox(width: 8),
                      // Container(
                      //   width: 25,
                      //   height: 26,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xffd9d9d9),
                      //   ),
                      //   child: IconButton(
                      //     onPressed: onIncrease,
                      //     icon: Icon(Icons.add),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                imageUrl,
                width: 81,
                height: 68,
              ),
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
