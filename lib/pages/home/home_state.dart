import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/home/home_view.dart';
import 'package:mobilya/state/main_state.dart';

abstract class HomeState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool finishAnimate = false;

  final MyState _myState = Get.put(MyState());
  @override
  void initState() {
    super.initState();
   
  }
}
