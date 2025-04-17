import 'package:app_getx/controller/cart_controller.dart';
import 'package:app_getx/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_getx/controller/shopping_controller.dart';

class Shopping extends StatelessWidget {
  Shopping({super.key});

  final shopController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(
          'Demo GetX',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tutorial '),
              Expanded(
                child: GetX<ShoppingController>(
                  builder: (controller) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: controller.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            '${controller.products[index].name}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'Shop : ${controller.products[index].description} ',
                              ),
                              Text(
                                'Price : ${controller.products[index].price}',
                              ),
                            ],
                          ),
                          leading: Icon(Icons.shopping_cart),
                          trailing: ElevatedButton(
                            onPressed: () {
                              cartController.addCart(
                                controller.products[index],
                              );
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              GetX<CartController>(
                builder: (controller) {
                  return Text(
                    'Total : \$ ${controller.total}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text('Items : ${controller.count.toString()}');
          },
        ),
      ),
    );
  }
}
