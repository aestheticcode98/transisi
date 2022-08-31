import 'package:get/get.dart';
import 'package:transisi/features/register/api_register.dart';
import 'package:transisi/features/register/controller_register.dart';

class BindingRegister implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerRegister>(() => ControllerRegister(api: ApiRegister()));
  }

}