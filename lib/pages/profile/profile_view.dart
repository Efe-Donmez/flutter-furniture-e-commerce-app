import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/profile/profile_state.dart';
import 'package:mobilya/state/main_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ProfileState {
  final MyState _myState = Get.put(MyState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        CircleAvatar(
          backgroundColor: Get.theme.primaryColor,
          maxRadius: 100,
          child: const Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
            size: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "İsim Soyisim",
            style: Get.textTheme.displayMedium!
                .copyWith(fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(),
        Column(
          children: List.generate(6, (index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: Text("Siparişlerim"),
                  leading: Icon(Icons.shopping_cart_rounded),
                ),
              ),
            );
          }),
        )
      ],
    ));
  }
}
