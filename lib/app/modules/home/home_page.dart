import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_patter_demo/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
              body: Container(
                  color: Colors.transparent,
                  height: double.infinity,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Text('data')),
            ));
  }
}
