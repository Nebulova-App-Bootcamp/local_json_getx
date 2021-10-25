import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:json/models/user.dart';
import 'package:json/models/user_my_json.dart';

class JsonController extends GetxController {
  final Rx<List<User>> _usersList = Rx<List<User>>([]);
  List<User> get users => _usersList.value.obs;

  @override
  void onReady() {
    loadJson();
  }

  loadJson() async {
    String data = await rootBundle.loadString('assets/users.json');
    var jsonResultUsers = jsonDecode(data);

    _usersList.value = UserMyJson.fromJson(jsonResultUsers).data;

    // var url = Uri.parse("https://reqres.in/api/users?page=2");

    // http.get(url).then((res) {
    //   var jsonResultUsers = jsonDecode(res.body);

    //   _usersList.value = UserMyJson.fromJson(jsonResultUsers).data;
    // });
  }
}
