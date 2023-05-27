import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/state/main_state.dart';

class MyNavBar extends StatefulWidget {
  MyNavBar({super.key, required this.child});
  Widget child;

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.search_rounded), label: "Arama"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_rounded), label: "Sepet"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_rounded), label: "Profil"),
  ];
  final List<String> _routes = ["/", "/search", "/cart", "/profile"];
  final MyState _state = Get.put(MyState());
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    getPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: _navItems,
        currentIndex: _currentIndex,
        onTap: (value) async {
          _state.navbarUpdate(value);
          Get.offNamed(_routes[value]);
        },
      ),
    );
  }

  getPage(){
    switch (Get.currentRoute) {
      case "/":
        _currentIndex = 0;
        break;
      case "/search":
        _currentIndex = 1;
        break;
      case "/cart":
        _currentIndex = 2;
        break;
      case "/profile":
        _currentIndex = 3;
        break;
      default:
    }
  }
}
