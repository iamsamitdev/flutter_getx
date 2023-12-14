import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:flutter_getx/pages/product_cart.dart';
import 'package:flutter_getx/pages/product_gridview.dart';
import 'package:get/get.dart';

class HomeKiosk extends StatelessWidget {
  const HomeKiosk({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Kiosk"),
          ),
          body: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Wrap(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                      child: Text('Cart',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    // list item in shopping cart
                    (controller.listCartItem.isEmpty)
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Empty Cart')],
                          )
                        : ProductInCart(),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                      child: Text('Products',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    // list item in gridview
                    ProductGridVeiw(),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
