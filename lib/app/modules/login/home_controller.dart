import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_patter_demo/app/data/models/request_token.dart';
import 'package:getx_patter_demo/app/data/repositories/remote/authentication_repository.dart';

class HomeController extends GetxController {
  final AuthenticationRepository _repository =
      Get.find<AuthenticationRepository>();

  String _username = '', _password = '';

  void onUsernameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<void> submit() async {
    try {
      RequestToken requestToken = await _repository.newRequestToken();

      final RequestToken authRequestToken = await _repository.authWithLogin(
          username: _username,
          password: _password,
          requestToken: requestToken.requestToken);

      print("login ok ${authRequestToken.expiresAt}");
    } catch (e) {
      String message = "";
      if (e is DioError) {
        if (e.response != null) {
          message = e.response.statusMessage;
        } else {
          message = e.message;
        }
      }

      Get.dialog(AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: [
          MaterialButton(
              child: Text('OK'),
              onPressed: () {
                Get.back();
              })
        ],
      ));
    }
  }
}
