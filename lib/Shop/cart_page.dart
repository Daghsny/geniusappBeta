import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Shop/Controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  final CartConroller controller = Get.find();
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Achats'),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.itemsCart.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: Image.asset(controller.itemsCart.keys
                                .toList()[index]
                                .imgUrl),
                          ),
                        ),
                        subtitle: Text(
                          '${controller.itemsCart.keys.toList()[index].price}  TND',
                        ),
                        title: Text(
                          controller.itemsCart.keys.toList()[index].name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: SizedBox(
                          width: 120,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              Text(
                                '${controller.itemsCart.values.toList()[index]}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  // controller
                                  //     .addProduct(controller.itemsCart[index]);
                                },
                                icon: const Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(24),
                child: const Row(
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
