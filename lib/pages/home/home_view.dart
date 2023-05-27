import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/home/home_state.dart';
import 'package:mobilya/state/main_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomeState {
  final MyState _myState = Get.put(MyState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        homeAppBar(),
        const SliverPadding(padding: EdgeInsets.only(top: 10)),
        homeGrid()
      ],
    ));
  }

  SliverGrid homeGrid() {
    return SliverGrid.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.85),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 1.5,
                color: Get.theme.colorScheme.background,
                child: Stack(
                  children: [
                    Image.asset("assets/images/products/p6.png",fit: BoxFit.fitHeight)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Ahşap Masa",style: Get.textTheme.titleLarge!.copyWith(),),
                    Text("Detay bilgi",style: Get.textTheme.labelLarge!.copyWith(color: Get.theme.hintColor),),
                  ],
                ),
              ),

            ],
          ),
        );
      },
    );
  }

  SliverAppBar homeAppBar() {
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
          );
        },
      ),
    );
  }
}
