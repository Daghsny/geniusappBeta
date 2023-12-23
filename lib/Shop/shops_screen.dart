import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/Shop/cart_page.dart';
import 'package:geniusapp/Shop/my_item_shoplist.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CartPage());
        },
        child: const Icon(Icons.shopping_bag_outlined),
      ),
      body: ListView(
        children: <Widget>[
          FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 25, right: 25, top: 60),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(255, 250, 182, 1),
                      kMyGreyColor,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Image.asset(
                          'assets/menu.png',
                          width: 20,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: const Text(
                                'Best Online \nPeda Games Collection',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(97, 90, 90, 1))),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: FadeInUp(
                              duration: const Duration(milliseconds: 1300),
                              child: Image.asset('assets/holi.png')),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Transform.translate(
            offset: const Offset(0, -35),
            child: FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 8.0,
                            offset: const Offset(0, 10.0))
                      ],
                      borderRadius: BorderRadius.circular(28.0),
                      color: Colors.white),
                  child: const TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search'),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: const Text('Category',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromRGBO(97, 90, 90, 1))),
                    ),
                    Row(
                      children: <Widget>[
                        FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: MaterialButton(
                              elevation: 0,
                              highlightElevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)),
                              padding: const EdgeInsets.all(10),
                              onPressed: () {},
                              color: const Color.fromRGBO(251, 53, 105, 0.1),
                              child: const Text('Adult',
                                  style: TextStyle(
                                      color: Color.fromRGBO(251, 53, 105, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            )),
                        const SizedBox(
                          width: 20.0,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1300),
                            child: MaterialButton(
                              elevation: 0,
                              highlightElevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28)),
                              padding: const EdgeInsets.all(10),
                              onPressed: () {},
                              color: const Color.fromRGBO(97, 90, 90, 0.1),
                              child: const Text('Children',
                                  style: TextStyle(
                                      color: Color.fromRGBO(97, 90, 90, 0.6),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),

          const SizedBox(
            height: 600,
            child: MyItemShopList(),
            //height: 600,
            //   child: GridView.builder(
            //       scrollDirection: Axis.horizontal,
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 1,
            //         childAspectRatio: 1.5 / 1,
            //       ),
            //       itemCount: Product.products.length,
            //       itemBuilder: (context, index) {
            //         return GestureDetector(
            //           onTap: () {
            //             Get.to(ViewProduct(prod: Product.products[index]));
            //           },
            //           child: GameItemTile(
            //             index: index,
            //           ),
            //         );
            //       }),
          ),
          const SizedBox(
            height: 30,
          )

          /************************* */

          // SizedBox(
          //   height: 280,
          //   width: double.infinity,
          //   child: ListView(
          //     padding: const EdgeInsets.only(bottom: 20, left: 20),
          //     scrollDirection: Axis.horizontal,
          //     children: <Widget>[
          //       FadeInUp(
          //           duration: const Duration(milliseconds: 1300),
          //           child: makeCard(
          //               context: context,
          //               startColor: const Color.fromRGBO(251, 121, 155, 1),
          //               endColor: const Color.fromRGBO(251, 53, 105, 1),
          //               image: 'assets/socks-one.png')),
          //       FadeInUp(
          //           duration: const Duration(milliseconds: 1400),
          //           child: makeCard(
          //               context: context,
          //               startColor: const Color.fromRGBO(203, 251, 255, 1),
          //               endColor: const Color.fromRGBO(81, 223, 234, 1),
          //               image: 'assets/socks-two.png')),
          //     ],
          //   ),
          // ),

          /*********************** */
        ],
      ),
    );
  }

//   Widget makeCard({context, startColor, endColor, image}) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context,
//             PageTransition(type: PageTransitionType.fade, child: ViewSocks()));
//       },
//       child: AspectRatio(
//         aspectRatio: 4 / 5,
//         child: Container(
//           margin: const EdgeInsets.only(right: 20),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(13.0),
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 colors: [startColor, endColor],
//               ),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey.shade300,
//                     blurRadius: 10,
//                     offset: const Offset(5, 10))
//               ]),
//           child: Padding(
//             padding: const EdgeInsets.all(50),
//             child: Center(
//               child: Image.asset(image),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
}
