import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/cart/cart_view.dart';
import 'package:mobilya/pages/home/home_view.dart';
import 'package:mobilya/pages/profile/profile_view.dart';
import 'package:mobilya/pages/search/search_view.dart';
import 'package:mobilya/widget/navbar.dart';
//import 'package:mobilya/router.dart';

class MyRoutes {
  static String initialRoute = "/";

  static List<GetPage<dynamic>>? routes = [
    GetPage(
        name: "/",
        page: () => MyNavBar(
              child: const HomePage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/search",
        page: () => MyNavBar(
              child: const SearchPage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/cart",
        page: () => MyNavBar(
              child: const CartPage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/profile",
        page: () => MyNavBar(
              child: const ProfilePage(),
            ),
        transition: Transition.noTransition),
  ];
}
    // "/": (p0) => ,
    // "/search": (p0) => MyNavBar(child: const HomePage()),
    // "/cart": (p0) => MyNavBar(child: const HomePage()),
    // "/profile": (p0) => MyNavBar(child: const HomePage()),