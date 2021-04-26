import 'package:get/get.dart';
import 'package:getx_patter_demo/app/data/providers/local/local_auth.dart';
import 'package:getx_patter_demo/app/data/repositories/local/local_authentication_repository.dart';
import 'package:getx_patter_demo/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final LocalAuthRepository _authRepository = Get.find<LocalAuthRepository>();
  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      // await Future.delayed(Duration(seconds: 3));

      Get.offNamed(AppRoutes.LOGIN);
    } catch (e) {
      print(e);
    }
  }
}
