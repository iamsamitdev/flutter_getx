import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/first.dart';
import 'package:get/get.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const FirstPage()),
                child: const Text('Go.to First Page'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.toNamed('/second'),
                child: const Text('Go.toName Second Page'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed('/second'),
                child: const Text('Go.offAllName Second Page'),
              ),
            ),
          ],
        ),
      )

    );
  }
}