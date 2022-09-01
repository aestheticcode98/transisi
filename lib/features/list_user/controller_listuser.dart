import 'dart:developer';
import 'package:get/state_manager.dart';
import 'package:transisi/features/list_user/api_listuser..dart';
import 'package:transisi/response/users.dart';

class ControllerListuser extends GetxController{
  final ApiListuser api;
  ControllerListuser({required this.api});

  var loading = false.obs;

  RxList<Users> allData = <Users>[].obs;

  @override
  void onInit() {
    allList();
    super.onInit();
  }

  allList()async{
    try{
      loading(true);
      var getResponse = await api.getAll();
      if(getResponse != null){
        var user = getResponse["data"];
        allData(RxList<Users>.from(
          user.map((e) => Users.fromJson(e))
        ));
      }
      loading(false);
    }catch(e){
      loading(false);
      log(e.toString());
    }
  }
}