import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:transisi/features/list_user/controller_listuser.dart';

class PageListuser extends GetView<ControllerListuser>{
  const PageListuser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('List Data'),
          backgroundColor: Colors.blueGrey,
        ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: RefreshIndicator(
          onRefresh: ()async{
            await Future.delayed(const Duration(seconds: 3));
            controller.allList();
          },
          child: ListView.builder(
            itemCount: controller.allData.length,
            itemBuilder: (context, index)=>
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                          color: Colors.blueGrey,
                          Icons.person_pin,
                          size: 100
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            controller.allData[index].id.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            controller.allData[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            controller.allData[index].year.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
        ),
        ),
      ),
    );
  }
}