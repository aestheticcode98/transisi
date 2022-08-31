import 'package:get_storage/get_storage.dart';

const String CACHE_TOKEN = "token";
const String CHECK_LOGIN = "loginState";
const String EMAIL = "email";
const String PASSWORD = "password";

class Api2{
  final box = GetStorage();

  Future setToken({String? token}) async {
    token ??= "";
    await box.write(CACHE_TOKEN, token);
  }
  Future<String?> getToken() async {
    return box.read(CACHE_TOKEN);
  }

  Future setEmail({String? email})async{
    email ??= "";
    await box.write(EMAIL, email);
  }
  Future<String> getEmail()async{
    return box.read(EMAIL);
  }

  Future setPassword({String? password})async{
    password ??= "";
    await box.write(PASSWORD, password);
  }
  Future<String> getPassword()async{
    return box.read(PASSWORD);
  }

  Future setIsLogin({bool? isLogin}) async {
    isLogin ??= false;
    await box.write(CHECK_LOGIN, isLogin);
  }
  Future<bool?> getLoginStatus() async {
    return box.read(CHECK_LOGIN);
  }

  Future removeStorageForLogout() async {
    await box.remove(CACHE_TOKEN);
    await box.remove(CHECK_LOGIN);
    await box.remove(EMAIL);
    await box.remove(PASSWORD);
  }

}