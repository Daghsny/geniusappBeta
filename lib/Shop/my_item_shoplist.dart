import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Model/cart_model.dart';
import 'package:geniusapp/Shop/product_details.dart';

class MyItemShopList extends StatelessWidget {
  const MyItemShopList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: CarouselSlider(
          options: CarouselOptions(
            height: 450,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            //pageSnapping: true,
          ),
          items: Product.products
              .map((product) => Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(ViewProduct(prod: product));
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 20,
                                offset: const Offset(0, 5)),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 320,
                                clipBehavior: Clip.hardEdge,
                                margin: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  product.imgUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                product.name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
              .toList()),
    );
  }
}


/**************** */


//************* */