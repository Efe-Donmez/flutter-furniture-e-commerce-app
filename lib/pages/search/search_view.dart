import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/search/search_state.dart';
import 'package:mobilya/state/main_state.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends SearchState {
  final MyState _myState = Get.put(MyState());
  final SearchDelegate _delegate = CustomSearchHintDelegate(hintText: "Search");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: TextButton(onPressed: (){
            showSearch(context: context, delegate: _delegate);
          }, child: Text("Search")),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: 10)),
        SearchGrid()
      ],
    ));
  }

  SliverGrid SearchGrid() {
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

}
class CustomSearchHintDelegate extends SearchDelegate<dynamic> {
  CustomSearchHintDelegate({
    required String hintText,
  }) : super(
    searchFieldLabel: hintText,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
  );

  @override
  Widget buildLeading(BuildContext context) => const Text('leading');

  @override
  PreferredSizeWidget buildBottom(BuildContext context) {
    return const PreferredSize(
       preferredSize: Size.fromHeight(56.0),
       child: Text('bottom'));
  }

  @override
  Widget buildSuggestions(BuildContext context) => const Text('suggestions');

  @override
  Widget buildResults(BuildContext context) => const Text('results');

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[];
}