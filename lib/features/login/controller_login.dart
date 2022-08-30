import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:transisi/features/login/api_login.dart';

class ControllerLogin extends GetxController{
  final ApiLogin api;
  ControllerLogin({required this.api});

  var edtEmail = TextEditingController();
  var edtPassword = TextEditingController();

  final formkeyLogin = GlobalKey<FormState>();

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
    if(formkeyLogin.currentState!.validate()){
      log("login success");
    }else{
      log('login failed');
    }
  }

}