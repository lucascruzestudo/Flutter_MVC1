import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvctest/app/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Incrementos e Decrementos"),
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Obx(() => Text(
                    '${controller.click.clickCount}',
                    style: const TextStyle(fontSize: 60),
                  ),)
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(16)),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () => controller.click.increment(),
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16)),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () => controller.click.decrement(),
                        icon: const Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ]),
        ));
  }
}
