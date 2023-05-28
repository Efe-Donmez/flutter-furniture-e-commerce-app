import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/home/home_state.dart';
import 'package:mobilya/state/main_state.dart';
import 'package:mobilya/widget/my_sliver_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomeState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        homeAppBar(),
        const SliverPadding(padding: EdgeInsets.only(top: 10)),
        MySliverGrid(finishAnimate: finishAnimate)
      ],
    ));
  }



  Widget homeAppBar() {
    return SliverAppBar(
      toolbarHeight: 500,
      flexibleSpace: PageView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Image.asset(
                "assets/images/m2.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "%70'e Varan İndirimlerle",
                      style: Get.textTheme.displayLarge!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ],
          ).animate(
            onComplete: (controller) {
              finishAnimate = true;
            },
          ).moveY(
              begin: -500,
              duration: Duration(milliseconds: 1500),
              curve: Curves.linearToEaseOut);
        },
      ),
    );
  }
}
