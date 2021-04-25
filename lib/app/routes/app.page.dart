import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/detail/detail_binding.dart';
import 'package:getx_patter_demo/app/modules/detail/detail_page.dart';
import 'package:getx_patter_demo/app/modules/home/home_binding.dart';
import 'package:getx_patter_demo/app/modules/home/home_page.dart';
import 'package:getx_patter_demo/app/modules/splash/splash_binding.dart';
import 'package:getx_patter_demo/app/modules/splash/splash_page.dart';
import 'package:getx_patter_demo/app/routes/app_routes.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.HOME, page: () => HomePage(), binding: HomeBindings()),
    GetPage(
        name: AppRoutes.DETAIL,
        page: () => DetailPage(),
        binding: DetailBindings()),
  ];
}
