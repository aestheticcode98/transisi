import 'dart:developer';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:transisi/features/single_user/api_singleuser.dart';

class ControllerSingleuser extends GetxController{
  final ApiSingleuser api;
  ControllerSingleuser({required this.api});

  var loading = false.obs;
  var idUser = 0.obs;
  var id = 0.obs;
  var name =''.obs;
  var year = 0.obs;

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    idUser.value = Get.arguments;
    singleUser();
    super.onInit();
  }

  singleUser()async{
    try{
      loading(true);
      var singleResult = await api.getSingleUser(id: idUser.value);
      if(singleResult != null){
        id.value = singleResult["data"]["id"];
        name.value = singleResult["data"]["name"];
        year.value = singleResult["data"]["year"];
      }
    }catch(e){
      log(e.toString());
    }
  }

}