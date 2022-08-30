import 'package:get/get.dart';
import 'package:transisi/features/login/api_login.dart';
import 'package:transisi/features/login/controller_login.dart';
import 'package:transisi/features/splashscreen/controller_splash.dart';

class ControllerBind extends Bindings{
  @override
  void dependencies() {
    Get.put(ControllerLogin(api: ApiLogin()));
    Get.put(ControllerSplash());
  }
}