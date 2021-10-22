import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:json/models/asignatura.dart';
import 'package:json/models/asignaturaList.dart';
import 'package:json/models/user.dart';
import 'package:json/models/user_my_json.dart';

class JsonController extends GetxController {
  var jsonResultUsers;
  var jsonResultAsignaturas;

  Rx<List<User>> usersList = Rx<List<User>>([]);
  List<User> get users => usersList.value.obs;

  Rx<List<Asignatura>> asignaturasList = Rx<List<Asignatura>>([]);
  List<Asignatura> get asignaturas => asignaturasList.value.obs;

  @override
  void onReady() async {
    await loadJson();
    usersList.value = UserMyJson.fromJson(jsonResultUsers).users;
    asignaturasList.value =
        AsignaturaList.fromJson(jsonResultAsignaturas).asignaturas;
  }

  loadJson() async {
    String data = await rootBundle.loadString('assets/user.json');
    jsonResultUsers = jsonDecode(data);
    String dataAsignaturas =
        await rootBundle.loadString('assets/asignaturas.json');
    jsonResultAsignaturas = jsonDecode(dataAsignaturas);
    print(jsonResultUsers);
    print(jsonResultAsignaturas);
  }
}
