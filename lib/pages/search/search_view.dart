import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/search/search_state.dart';
import 'package:mobilya/state/main_state.dart';
import 'package:mobilya/widget/my_sliver_grid.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends SearchState {
  final MyState _myState = Get.put(MyState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0) +
                  const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  "Arama",
                  style: Get.textTheme.displayMedium,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 2)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search_rounded),
                        contentPadding: EdgeInsets.only(left: -10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Ara",
                        fillColor: Colors.transparent),
                  ),
                ),
              ),
            ],
          ),
        )),
        const SliverPadding(padding: EdgeInsets.only(top: 10)),
        const SliverToBoxAdapter(
          child: Divider(),
        ),
        MySliverGrid(finishAnimate: finishAnimate)
      ],
    ));
  }

}
