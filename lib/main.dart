import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Presentation/models/cart_model.dart';
import 'package:shop_app/Presentation/views/cart_page.dart';
import 'package:shop_app/Presentation/views/home_Page.dart';

import 'Presentation/views/intro_page.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => const HomePage(),
          introPage.id: (context) => const introPage(),
          CartPage.id: (context) => const CartPage(),
        },
        initialRoute: introPage.id,
      ),
    );
  }
}
