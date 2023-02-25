import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpatternget/controller/create_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {

  final _controller = Get.put(CreateControlller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _controller.userIdController,
                decoration: const InputDecoration(
                  label: Text("User ID"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _controller.titleController,
                decoration: const InputDecoration(
                  label: Text("Title"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _controller.bodyController,
                decoration: const InputDecoration(
                  label: Text("Body"),
                ),
              ),
            ),
            MaterialButton(
              onPressed: _controller.doCreate,
              minWidth: double.infinity,
              color: Colors.blue,
              child: const Text("Create", style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 10,),
            const Text("Response:", style: TextStyle(fontSize: 18, color: Colors.red),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text("ID: ${_controller.response.id}", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("User ID: ${_controller.response.userId}", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("Title: ${_controller.response.title}", style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text("Body: ${_controller.response.body}", style: const TextStyle(fontSize: 18),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
