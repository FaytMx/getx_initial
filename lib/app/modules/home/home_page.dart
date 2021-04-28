import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_patter_demo/app/data/models/movie.dart';
import 'package:getx_patter_demo/app/modules/home/home_controller.dart';
import 'package:getx_patter_demo/app/modules/home/local_widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (_) => Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(icon: Icon(Icons.exit_to_app), onPressed: _.logOut)
              ],
            ),
            body: Container(
              color: Colors.transparent,
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: _.movies.length,
                  itemBuilder: (ctx, index) {
                    final Movie movie = _.movies[index];

                    return MovieItem(movie: movie);
                  }),
            )));
  }
}
