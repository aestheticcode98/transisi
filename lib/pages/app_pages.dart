import 'package:get/get.dart';
import 'package:transisi/features/create/binding_create.dart';
import 'package:transisi/features/create/page_create.dart';
import 'package:transisi/features/list_user/binding_listuser.dart';
import 'package:transisi/features/list_user/page_listuser.dart';
import 'package:transisi/features/login/page_login.dart';
import 'package:transisi/features/register/binding_register.dart';
import 'package:transisi/features/register/page_register.dart';
import 'package:transisi/features/single_user/binding_singleuser.dart';
import 'package:transisi/features/single_user/page_singleuser.dart';
import 'package:transisi/pages/app_routes.dart';
import '../features/login/binding_login.dart';
import '../features/splashscreen/binding_splash.dart';
import '../features/splashscreen/page_splash.dart';

class AppPages{
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: ()=> const PageSplash(),
        binding: BindingSplash()
    ),
    GetPage(
        name: Routes.login,
        page: ()=> const PageLogin(),
        binding: BindingLogin()
    ),
    GetPage(
        name: Routes.register,
        page: ()=> const PageRegister(),
        binding: BindingRegister()
    ),
    GetPage(
        name: Routes.create,
        page: ()=> const PageCreate(),
        binding: BindingCreate()
    ),
    GetPage(
        name: Routes.list_user,
        page: ()=> const PageListuser(),
        binding: BindingListuser()
    ),
    GetPage(
        name: Routes.single_user,
        page: ()=> const PageSingleuser(),
        binding: BindingSingleuser()
    ),
  ];
}