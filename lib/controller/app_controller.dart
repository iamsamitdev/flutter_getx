import 'package:flutter_getx/models/cart_item.dart';
import 'package:flutter_getx/models/data.dart';
import 'package:flutter_getx/models/product.dart';
import 'package:get/get.dart';

class AppController extends GetxController {

  // Counter --------------------------------------------
  // สร้างตัวแปรแบบ Rx (Reactive) ไว้เก็บค่า counter
  RxInt counter = 0.obs;

  // สร้างฟังก์ชันเพิ่มค่า counter
  increment() => counter++;
  // -----------------------------------------

  // Bottom Navigation Bar --------------------------------------------
  // สร้างตัวแปรแบบ Rx (Reactive) ไว้เก็บค่า index ของ Bottom Navigation Bar
  RxInt navIndex = 0.obs;

  // ListCartItem - ตะกร้าสินค้า
  // --------------------------------------------
  RxList<CartItem> listCartItem = <CartItem>[].obs;

  // AddtoCart - เพิ่มสินค้าลงในตะกร้า
  // --------------------------------------------
  addToCart({required CartItem item}) {
    // ตรวจสอบว่ามีสินค้านี้อยู่ในตะกร้าแล้วหรือไม่
    // ถ้าไม่มีให้เพิ่มสินค้าลงในตะกร้า
    if(listCartItem.where((element) => (element.productId == item.productId)).isEmpty) {
      listCartItem.add(item);
    // ถ้ามี item เก่าอยู่แล้วให้เพิ่มจำนวนสินค้าในตะกร้า
    } else {
      listCartItem.firstWhere((element) => (element.productId == item.productId)).quantity++;
    }
    update(); // อัพเดทข้อมูล
  }

  // Get Product by Id - ดึงข้อมูลสินค้าจาก id
  // --------------------------------------------
  Product getProduct({required String productId}) {
    return listProduct.firstWhere((element) => (element.id == productId));  
  }

  // Remove Cart Item - ลบสินค้าในตะกร้า
  // --------------------------------------------
  deleteItemFfromCart({required String productId}) {
    listCartItem.removeWhere((element) => (element.productId == productId));
    update(); // update UI
  }

}