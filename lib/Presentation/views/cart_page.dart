// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Presentation/models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = "CartPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "MyCart",
          style: GoogleFonts.pacifico(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) => Column(
          children: [
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: value.cartitems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(10, 10),
                                    blurRadius: 6,
                                    spreadRadius: 1,
                                    color: Colors.cyan.withOpacity(.4))
                              ]),
                          child: ListTile(
                            leading: Image.asset(
                              value.cartitems[index][2],
                              height: 36,
                            ),
                            title: Text(value.cartitems[index][0]),
                            subtitle: Text("\$ " + value.cartitems[index][1]),
                            trailing: IconButton(
                                onPressed: () {
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeitemsfromcart(index);
                                },
                                icon: const Icon(Icons.cancel)),
                          ),
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style:
                              TextStyle(color: Colors.grey[300], fontSize: 18),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(value.Caclutetotalprice(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 24)),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.green.shade100)),
                      padding: EdgeInsets.all(12),
                      child: Row(children: const [
                        Text("Pay Now  ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
