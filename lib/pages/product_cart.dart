import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:get/get.dart';

class ProductInCart extends StatelessWidget {
  ProductInCart({super.key});

  // สร้างตัวแปร controller แบบเรียกใช้งานได้จากทุกที่
  final controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.0,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listCartItem.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final product = controller.getProduct(
              productId: controller.listCartItem[index].productId);
          return Stack(
            children: [
              // product item
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.green.shade200,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            product.name,
                          ),
                          Text("x${controller.listCartItem[index].quantity}"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Button delete
              Positioned(
                top: 8,
                right: 4,
                child: GestureDetector(
                  onTap: () {
                    // remove product item from cart
                    controller.deleteItemFfromCart(
                        productId: controller.listCartItem[index].productId);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.remove_circle,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
