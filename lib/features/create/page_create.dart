import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/create/controller_create.dart';
import 'package:transisi/pages/app_routes.dart';

class PageCreate extends GetView<ControllerCreate>{
  const PageCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Data'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              'Welcome',
              style: GoogleFonts.robotoCondensed(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                  )
              ),
            ),
          ),
          const Icon(
              Icons.person_add_alt_outlined,
            size: 50,
            color: Colors.blueGrey,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextField(
              controller: controller.edtName,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_rounded),
                hintText: 'Name'
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              controller: controller.edtJob,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.work_outline_rounded),
                hintText: 'Job'
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                    onPressed: ()=> controller.create(),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.blueGrey, width: 1), backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      fixedSize: Size(Get.width * 0.592, 45),
                      elevation: 0,
                    ),
                    child: const Text('Post user')
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: ()=> Get.toNamed(Routes.list_user),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blueGrey, backgroundColor: Colors.transparent, side: const BorderSide(color: Colors.blueGrey, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      fixedSize: const Size(110, 45),
                      elevation: 0,
                    ),
                    child: const Text('See all user')
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
                onPressed: ()=> Get.toNamed(Routes.experiment),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.blueGrey, width: 1), backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  fixedSize: Size(Get.width, 45),
                  elevation: 0,
                ),
                child: const Text('Experiment')
            ),
          ),
        ],
      ),
    );
  }
}