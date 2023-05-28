import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/info/info_view.dart';

class MySliverGrid extends StatelessWidget {
  MySliverGrid({super.key, required this.finishAnimate});
  bool finishAnimate;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.85),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.to(const InfoPage());
            },
            child: Column(
              children: [
                Card(
                  elevation: 1.5,
                  color: Get.theme.colorScheme.background,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 180,
                        child: Hero(
                          tag: "infoImage",
                          child: Image.asset("assets/images/products/p2.png",
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Ahşap Masa",
                        style: Get.textTheme.titleLarge!.copyWith(),
                      ),
                      Text(
                        "Detay bilgi",
                        style: Get.textTheme.labelLarge!
                            .copyWith(color: Get.theme.hintColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ).animate().moveY(
            begin: !finishAnimate ? (1000 + (200 * index)).toDouble() : 0,
            duration: Duration(milliseconds: 800 + 100 * (index % 2)),
            curve: Curves.linearToEaseOut);
      },
    );
  }
}
