import 'package:flutter/material.dart';

class FreshItem extends StatelessWidget {
  FreshItem(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imgPath,
      required this.color,
      required this.onPressed});
  final String itemName;
  final String itemPrice;
  final String imgPath;
  final color;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[100],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(10, 10),
                  blurRadius: 6,
                  spreadRadius: 1,
                  color: color.withOpacity(.4))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imgPath,
              height: 64,
            ),
            Text(
              itemName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              onPressed: onPressed,
              color: color[800],
              child: Text(
                "\$ " + itemPrice,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
