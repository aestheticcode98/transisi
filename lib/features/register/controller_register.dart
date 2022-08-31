import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/register/api_register.dart';

class ControllerRegister extends GetxController{
  final ApiRegister api;
  ControllerRegister({required this.api});

  var edtEmail = TextEditingController();
  var edtPassword = TextEditingController();

  var loading = false.obs;
  final formkeyRegister = GlobalKey<FormState>();

  @override
  void onClose() {
    edtEmail.dispose();
    edtPassword.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  validator()async{
    if(formkeyRegister.currentState!.validate()){
      regis();
    }else{
      log('login failed');
    }
  }

  regis()async{
    try{
      loading(true);
      var rr = await api.register(email: edtEmail.text, password: edtPassword.text);
      if(rr["id"] != null){
        Get.back();
        customDialog();
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
            'Hello and thank you for join with us',
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
