import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Model/cart_model.dart';
import 'package:geniusapp/Shop/Controller/cart_controller.dart';

class GameItemTile extends StatelessWidget {
  final int index;
  final CartConroller controller = Get.put(CartConroller());

  GameItemTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Product.products[index].color,
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 80,
            child: Image.asset(Product.products[index].imgUrl),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Product.products[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '${Product.products[index].price} TND',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              // IconButton(
              //   icon: const Icon(Icons.add),
              //   onPressed: () {

              //     controller.addProduct(Product.products[index]);
              //   },
              //   style: IconButton.styleFrom(
              //     backgroundColor: Colors.grey.shade100,
              //   ),
              // ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
