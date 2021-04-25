import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/detail/detail_controller.dart';

class DetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
