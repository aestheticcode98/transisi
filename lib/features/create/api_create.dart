import 'package:transisi/api/api1.dart';

class ApiCreate{
  Future<dynamic> createUser({required String name, required String job})async{
    final input = {
      "name" : name,
      "job" : job
    };
    var r = await Api1().apiJSONPostWithToken('api/users', input);
    return r;
  }
}