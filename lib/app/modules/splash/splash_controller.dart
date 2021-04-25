import 'package:get/get.dart';
import 'package:getx_patter_demo/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      Get.offNamed(AppRoutes.HOME);
    } catch (e) {
      print(e);
    }
  }
}
