import 'package:get/get.dart';
import 'package:getx_patter_demo/app/data/models/movie.dart';
import 'package:getx_patter_demo/app/data/repositories/local/local_authentication_repository.dart';
import 'package:getx_patter_demo/app/data/repositories/remote/movies_repository.dart';
import 'package:getx_patter_demo/app/routes/app_routes.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  final MoviesRepository _moviesRepository = Get.find<MoviesRepository>();

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  @override
  void onReady() {
    super.onReady();
    _load();
  }

  Future<void> _load() async {
    try {
      _movies = await _moviesRepository.getTopMovies();
      update();
    } catch (e) {
      print(e);
    }
  }
}
