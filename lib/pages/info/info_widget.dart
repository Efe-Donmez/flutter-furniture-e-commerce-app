import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoWidgets {
  static Widget infoFAB({required IconData icon,required void Function()? onTab, Color? color,String tag =""}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        heroTag: tag,
        backgroundColor: color ?? Get.theme.primaryColor,
        onPressed: onTab,
        child: Icon(icon,color: Colors.white,),
      ),
    );
  }
}
