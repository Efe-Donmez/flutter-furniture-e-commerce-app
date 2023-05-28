import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartWidgets {
  static Widget addButtons() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),color: Get.theme.hintColor
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add,color: Colors.white,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "0",
            style: Get.textTheme.displaySmall,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),color: Get.theme.hintColor
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove,color: Colors.white,),
          ),
        ),
      ],
    );
  }
}
