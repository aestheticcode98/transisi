import 'package:get/get.dart';
import 'package:transisi/features/splashscreen/controller_splash.dart';

class BindingSplash implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerSplash>(() => ControllerSplash());
  }
}