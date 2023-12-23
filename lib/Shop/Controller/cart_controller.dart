import 'package:get/get.dart';
import 'package:geniusapp/Model/cart_model.dart';

class CartConroller extends GetxController {
  final _itemsCart = {}.obs;

  void addProduct(Product product) {
    if (_itemsCart.containsKey(product)) {
      _itemsCart[product] += 1;
    } else {
      _itemsCart[product] = 1;
    }

    Get.snackbar(
      "Good",
      "Your product is add to cart",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  get itemsCart => _itemsCart;
}
