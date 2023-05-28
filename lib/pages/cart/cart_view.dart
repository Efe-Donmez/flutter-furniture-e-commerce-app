import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:mobilya/pages/cart/cart_state.dart';
import 'package:mobilya/state/main_state.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends CartState {
  final MyState _myState = Get.put(MyState());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Get.theme.cardColor),
              height: 100,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/products/p4.png",
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mobila Sepet",
                              style: Get.textTheme.titleLarge,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Mobila Sepet",
                              style: Get.textTheme.labelLarge!
                                  .copyWith(color: Get.theme.hintColor),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),

                    ]),
                  )
                ],
              ),
            )).animate(
              onComplete: (controller) {
                finishAnimate = true;
              },

            ).moveX(begin: !finishAnimate ? (800 +(100* index).toDouble()):0 ,duration: Duration(milliseconds: 800 + 100 *index),curve: Curves.linearToEaseOut);;;
      }),
    );
  }
}
