import 'package:get/get.dart';

import '../../pages/app_routes.dart';

class ControllerSplash extends GetxController{

  @override
  void onInit() async {
    splashAnimation();
    super.onInit();
  }

  splashAnimation() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(Routes.login);
  }
}
