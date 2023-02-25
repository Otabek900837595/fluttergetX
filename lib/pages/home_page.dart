
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterpatternget/controller/home_controller.dart';
import 'package:flutterpatternget/pages/create_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';
import '../views/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = Get.put(HomeController());

  @override
  void initState() {
    _controller.apiPostList();
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
              itemCount: _controller.items.length,
              itemBuilder: (context, index) {
                return itemOfPost(_controller.items[index]);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }



}
