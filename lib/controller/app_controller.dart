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

}