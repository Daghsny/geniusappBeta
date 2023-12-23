import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Shop/Controller/cart_controller.dart';
import 'package:geniusapp/Shop/cart_page.dart';
import 'package:geniusapp/Shop/my_item_shoplist.dart';

class StoreScreen extends StatelessWidget {
  final CartConroller controller = Get.put(CartConroller());

  StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S H O P"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CartPage());
        },
        child: const Icon(Icons.shopping_bag_outlined),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 8, right: 8, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose One Product',
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: MyItemShopList(), // child: GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       childAspectRatio: 1 / 1,
              //     ),
              //     itemCount: Product.products.length,
              //     itemBuilder: (context, index) {
              //       return

              //       // GameItemTile(
              //       //   index: index,

              //       // );
              //     }),
            ),
          ],
        ),
      ),
    );
  }
}
