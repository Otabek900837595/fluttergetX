
import 'package:flutterpatternget/controller/main_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DIService {
  static Future<void> init() async {
    // Get.put<MainController>(MainController());
    Get.lazyPut<MainController>(() => MainController(), fenix: true);
  }
}
