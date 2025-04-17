import 'package:app_getx/model/product.dart';
import 'package:get/state_manager.dart';

class CartController extends GetxController {
  var carts = <Product>[].obs;

  double get total => carts.fold(0, (sum, item) => sum + item.price);
  int get count => carts.length;

  addCart(Product product) {
    carts.add(product);
  }



}