import 'package:get/get.dart';
import 'package:transisi/features/list_user/api_listuser..dart';
import 'package:transisi/features/list_user/controller_listuser.dart';

class BindingListuser implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerListuser>(() => ControllerListuser(api: ApiListuser()));
  }
}