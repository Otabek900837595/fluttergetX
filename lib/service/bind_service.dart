
import 'package:flutterpatternget/controller/main_controller.dart';
import 'package:get/get.dart';

class BindService implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }
}