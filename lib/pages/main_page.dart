
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterpatternget/controller/home_controller.dart';
import 'package:flutterpatternget/controller/main_controller.dart';
import 'package:flutterpatternget/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';
import '../views/home_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    Get.find<MainController>().apiPostList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("setState"),
      ),
      body: Obx(
        () => Stack(
          children: [
            ListView.builder(
              itemCount: Get.find<MainController>().items.length,
              itemBuilder: (context, index) {
                return itemOfPost(Get.find<MainController>().items[index]);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Icon(Icons.add),
      ),
    );
  }



}
