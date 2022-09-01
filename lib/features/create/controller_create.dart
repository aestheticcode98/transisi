import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/create/api_create.dart';

class ControllerCreate extends GetxController{
  final ApiCreate api;
  ControllerCreate ({required this.api});

  var loading = false.obs;

  var edtName = TextEditingController();
  var edtJob = TextEditingController();

  @override
  void onClose() {
    edtName.dispose();
    edtJob.dispose();
    super.onClose();
  }

  create()async{
    try{
     loading(true);
     var createResponse = await api.createUser(name: edtName.text, job: edtJob.text);
     if(createResponse != null){
       customDialog();
       log(createResponse);
     }
    }catch(e){
      log(e.toString());
    }
  }

  customDialog(){
    return Get.defaultDialog(
        radius: 8,
        title: '',
        titlePadding: EdgeInsets.zero,
        content: Column(
          children: <Widget>[
            const Icon(Icons.check_circle, size: 80, color: Colors.blueGrey),
            Text(
              'Transisi',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 25,
                  color: Colors.black54
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Post is success',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 20,
                  color: Colors.black38
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: ()=> Get.back(),
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.blueGrey, width: 1)
                    ),
                    fixedSize: const Size(160, 35)
                ),
                child: const Text('Thank you', style: TextStyle(color: Colors.blueGrey),)
            )
          ],
        )
    );
  }
}