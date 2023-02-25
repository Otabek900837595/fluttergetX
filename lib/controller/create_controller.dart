import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';

class CreateControlller extends GetxController {
  TextEditingController userIdController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  Post response = Post(id: 0, userId: 0, title: "", body: "");

  void doCreate() {
    String userId = userIdController.value.text.trim();
    String title = titleController.value.text.trim();
    String body = bodyController.value.text.trim();
    Post post = Post(userId: int.parse(userId), title: title, body: body);


    Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((value) => {
      response = Post.fromJson(jsonDecode(value!)),
    });
  }
}