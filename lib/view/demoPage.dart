import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:minggu_9_getx/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  DemoPage({super.key});
  final DemoController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Get.arguments),
          ),
          SwitchListTile(
            value: ctrl.isDark,
            title: Text("Touch to change Theme Mode"),
            onChanged: ctrl.changeTheme,
          ),
          ElevatedButton(
              onPressed: () => Get.snackbar(
                  "Snackbar", "Hello this is Snackbat message",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: Colors.black87),
              child: Text('Snack Bar')),
          ElevatedButton(
              onPressed: () => Get.defaultDialog(
                  title: "Dialogue",
                  content: Text(
                    'Hey,From Dialogue',
                  )),
              child: Text('Dialogue')),
          ElevatedButton(
              onPressed: () => Get.bottomSheet(Container(
                    height: 150,
                    color: Colors.white,
                    child: Text(
                      'Hello From Bottwom sheet',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
              child: Text('Bottom Sheet')),
          // off named because we want to remove the page stack
          ElevatedButton(
              onPressed: () => Get.offNamed('/'), child: Text('Back To Home')),
        ],
      )),
    );
  }
}
