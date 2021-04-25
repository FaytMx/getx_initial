import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
