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
        page: () => const MyNavBar(
              child: HomePage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/search",
        page: () => const MyNavBar(
              child: SearchPage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/cart",
        page: () => const MyNavBar(
              child: CartPage(),
            ),
        transition: Transition.noTransition),
    GetPage(
        name: "/profile",
        page: () => const MyNavBar(
              child: ProfilePage(),
            ),
        transition: Transition.noTransition),
  ];
}
    // "/": (p0) => ,
    // "/search": (p0) => MyNavBar(child: const HomePage()),
    // "/cart": (p0) => MyNavBar(child: const HomePage()),
    // "/profile": (p0) => MyNavBar(child: const HomePage()),