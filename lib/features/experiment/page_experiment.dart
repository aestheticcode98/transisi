import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:transisi/features/experiment/controller_experiment.dart';

class PageExperiment extends GetView<ControllerExperiment>{
  const PageExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Network Test"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            SizedBox(
                width: Get.width*.6,
                child: TextField(
                  controller: controller.edtSite,
                  decoration: const InputDecoration(
                    hintText: "Site"
                  ),
                )),
            const Spacer(),
            ElevatedButton(
                onPressed: ()=> controller.tracert(),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueGrey, backgroundColor: Colors.transparent, side: const BorderSide(color: Colors.blueGrey, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  fixedSize: const Size(110, 45),
                  elevation: 0,
                ),
                child: const Text('Test')
            ),
          ],
        ),
      ),
    );
  }
}