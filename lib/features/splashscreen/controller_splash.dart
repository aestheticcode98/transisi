import 'package:get/get.dart';
import 'package:transisi/api/api2.dart';

import '../../pages/app_routes.dart';

class ControllerSplash extends GetxController{

  @override
  void onInit() async {
    splashAnimation();
    super.onInit();
  }

  splashAnimation() async {
    await Future.delayed(const Duration(seconds: 3));
    var loginStatus = await Api2().getLoginStatus();
    if(loginStatus == true){
      Get.offNamed(Routes.create);
    }else{
      Get.offNamed(Routes.login);
    }
  }
}
