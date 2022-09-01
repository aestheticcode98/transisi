import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:transisi/api/api2.dart';
import 'package:transisi/features/login/api_login.dart';
import 'package:transisi/pages/app_routes.dart';

class ControllerLogin extends GetxController{
  final ApiLogin api;
  ControllerLogin({required this.api});

  var edtEmail = TextEditingController();
  var edtPassword = TextEditingController();

  var loading = false.obs;
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
      login();
    }else{
      log('login failed');
    }
  }

  login()async{
    try{
      loading(true);
      var loginResult = await api.login(email: edtEmail.text, password: edtPassword.text);
      if(loginResult["token"] != null){
        var token = loginResult["token"];
        await Api2().setToken(token: token);
        await Api2().setIsLogin(isLogin: true);
        await Api2().setEmail(email: edtEmail.text);
        await Api2().setPassword(password: edtPassword.text);
        Get.offNamed(Routes.create);
      }
      loading(false);
    }catch(e){
      loading(false);
      log(e.toString());
    }
  }
}