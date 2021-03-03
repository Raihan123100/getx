import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/controller/count_controller.dart';

class Home extends StatelessWidget {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
                builder: (_) => Obx(() => Text(controller.count.toString()))),
            RaisedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.toNamed('/pages/fs');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}
