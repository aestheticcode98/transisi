import 'package:transisi/api/api1.dart';

class ApiRegister{
  Future<dynamic> register({required String email, required String password})async{
    final input={
      "email" : email,
      "password" : password
    };
    var r = await Api1().apiJSONPost('api/register', input);
    return r;
  }
}