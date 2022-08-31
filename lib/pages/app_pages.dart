import 'package:get/get.dart';
import 'package:transisi/features/login/page_login.dart';
import 'package:transisi/features/register/binding_register.dart';
import 'package:transisi/features/register/page_register.dart';
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
  ];
}