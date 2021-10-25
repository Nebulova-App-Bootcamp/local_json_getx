import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:json/controllers/json_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JsonController>(
      init: JsonController(),
      builder: (jsonController) => Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     jsonController.loadJson();
        //   },
        // ),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Obx(
          () => ListView(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: jsonController.users.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(jsonController.users[index].first_name),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(jsonController.users[index].email ??
                          "Oye falta el email"),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Image.network(
                            jsonController.users[index].avatar,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: jsonController.users.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(jsonController.users[index].first_name),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(jsonController.users[index].email ??
                          "Oye falta el email"),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.yellow,
                          width: 200,
                          height: 200,
                          child: Image.network(
                            jsonController.users[index].avatar,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
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
