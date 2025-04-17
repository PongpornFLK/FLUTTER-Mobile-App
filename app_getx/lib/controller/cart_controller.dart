import 'package:app_getx/model/product.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CartController extends GetxController {
  var carts = <Product>[].obs;

  double get total => carts.fold(0, (sum, item) => sum + item.price);
  int get count => carts.length;

  addCart(Product product) async {
    await Supabase.instance.client.from('device').insert({
      'body': product.name,
      'Price': product.price,
    });
    carts.add(product);
  }
}
