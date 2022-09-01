import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/single_user/controller_singleuser.dart';

class PageSingleuser extends GetView<ControllerSingleuser>{
  const PageSingleuser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              const Icon(CupertinoIcons.person_fill, color: Colors.white, size: 120),
              Obx(() => Text(
                controller.name.value,
                style: GoogleFonts.robotoCondensed(
                    textStyle: const TextStyle(
                        color: Colors.white,
                      fontSize: 30
                    )
                ),
              ))
            ],
          ),
        ),
      ),
    body: Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 70,
          width: Get.width,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Icon(CupertinoIcons.number, color: Colors.blueGrey, size: 35,),
                SizedBox(width: 5),
                Text(
                    controller.id.value.toString(),
                    style: TextStyle(fontSize: 30)
                )
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          width: Get.width,
          margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Icon(CupertinoIcons.person_alt_circle, color: Colors.blueGrey, size: 35,),
                SizedBox(width: 5),
                Text(
                    controller.name.value,
                    style: TextStyle(fontSize: 30)
                )
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          width: Get.width,
          margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Icon(Icons.date_range_rounded, color: Colors.blueGrey, size: 35,),
                SizedBox(width: 5),
                Text(
                    "Join since ${controller.year.value}",
                    style: TextStyle(fontSize: 20)
                )
              ],
            ),
          ),
        ),
      ],
    )),
    );
  }
}