import 'package:app_getx/model/product.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;
  // Observable list of products
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 5));

    var productsList = [
      Product(id: 1, name: 'NoteBook', description: 'JIB', price: 100000.0),
      Product(id: 2, name: 'Computer', description: 'Banana', price: 20000.0),
      Product(id: 3, name: 'Mouse', description: 'IHAVECPU', price: 3000.0),
      Product(id: 4, name: 'Phone', description: 'Banana', price: 7000.0),
    ];

    products.assignAll(productsList);
  }
}
