import 'package:get/get.dart';
import 'package:transisi/features/single_user/api_singleuser.dart';
import 'package:transisi/features/single_user/controller_singleuser.dart';

class BindingSingleuser implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerSingleuser>(() => ControllerSingleuser(api: ApiSingleuser()));
  }
}