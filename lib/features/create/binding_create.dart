import 'package:get/get.dart';
import 'package:transisi/features/create/api_create.dart';
import 'package:transisi/features/create/controller_create.dart';

class BindingCreate implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerCreate>(() => ControllerCreate(api: ApiCreate()));
  }
}