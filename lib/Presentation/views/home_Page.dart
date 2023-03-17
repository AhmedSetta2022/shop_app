// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Presentation/models/cart_model.dart';
import 'package:shop_app/Presentation/views/cart_page.dart';

import '../widgets/fresh_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = " HomePage";

  @override
  Widget build(BuildContext context) {
    final Cart = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CartPage.id);
        },
        backgroundColor: Colors.deepPurple,
        child: Stack(
          children: [
            Positioned(
              top: -2,
              child: Container(
                child: Text(
                  "${Cart.cartitems.length}",
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartPage.id);
                },
                icon: const Icon(
                  Icons.add_shopping_cart,
                  size: 28,
                ))
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "Good morning ,",
              style: GoogleFonts.notoSerif(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Lets order fresh items for you ",
              style: GoogleFonts.notoSerif(
                  fontSize: 38, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Fresh items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopitems.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: ((context, index) {
                      return FreshItem(
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .additems(index);
                        },
                        itemName: value.shopitems[index][0],
                        itemPrice: value.shopitems[index][1],
                        imgPath: value.shopitems[index][2],
                        color: value.shopitems[index][3],
                      );
                    }));
              },
            ))
          ],
        ),
      )),
      drawer: Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assests/images/picbackground.jpg'),
                          fit: BoxFit.cover)),
                  currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assests/images/Ahmed.jpg'),
                  ),
                  accountName: Text(
                    "AhmedSetta",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  accountEmail: Text("AhmedSetta@gmail.com")),
              ListTile(
                title: const Text(
                  'My Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.add_shopping_cart,
                  size: 35,
                ),
                onTap: () {
                  Navigator.pushNamed(context, CartPage.id);
                },
              ),
              ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.help_center,
                  size: 35,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(
                  Icons.exit_to_app,
                  size: 35,
                ),
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: const Text(
              "Developed by AhmedSetta © 2023",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
