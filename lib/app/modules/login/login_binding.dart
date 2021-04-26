import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/login/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
