import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/app_controller.dart';
import 'package:get/get.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  // สร้าง object ของ AppController
  static final _controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter ${DateTime.now().microsecondsSinceEpoch}'),
      ),
      body: Center(
        child: Obx(
          () => Column(
            children: [
              Text(
                '${_controller.counter.value}',
                style: const TextStyle(fontSize: 100.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // เรียกใช้ฟังก์ชัน increment จาก AppController
          _controller.increment();
        },
        child: const Icon(Icons.add),
      )
    );
  }
}
