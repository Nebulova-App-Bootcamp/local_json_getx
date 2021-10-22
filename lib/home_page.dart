import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json/controllers/json_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JsonController>(
      init: JsonController(),
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.loadJson();
          },
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Obx(
          () => Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  return Text(controller.users[index].name);
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.asignaturas.length,
                itemBuilder: (context, index) {
                  return Text(
                    controller.asignaturas[index].titulo,
                    style: TextStyle(color: Colors.green),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
