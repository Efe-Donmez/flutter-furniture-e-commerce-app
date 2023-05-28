import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/cart/cart_widget.dart';
import 'package:mobilya/pages/info/info_state.dart';
import 'package:mobilya/pages/info/info_widget.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends InfoState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: infoFab(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              expandedHeight: Get.width + 50,
              collapsedHeight: Get.width -150,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/products/p7.png",
                        ),
                        fit: BoxFit.cover)),
                height: Get.width + 100,
                width: Get.width,
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Mobilya",
                  style: Get.textTheme.displayMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "katogoriler xxxxxx",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(color: Get.theme.hintColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1500\$",
                      style: Get.textTheme.displaySmall!
                          .copyWith(color: Get.theme.primaryColor),
                    ),
                    CartWidgets.addButtons()
                  ],
                ),
              ),
              SizedBox(height: Get.height,)
            ]))
          ],
        ));
  }

  Row infoFab() {
    return Row(
      children: [
        InfoWidgets.infoFAB(
            icon: Icons.arrow_back_ios_new_rounded,
            onTab: () {
              Get.back();
            },
            tag: "1"),
        const Spacer(),
        InfoWidgets.infoFAB(
            icon: Icons.share,
            onTab: () {
              Get.back();
            },
            tag: "2"),
        InfoWidgets.infoFAB(
            icon: Icons.favorite_border_rounded,
            onTab: () {
              Get.back();
            },
            tag: "3"),
      ],
    );
  }
}
