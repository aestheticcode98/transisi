import 'package:transisi/api/api1.dart';

class ApiSingleuser {
  Future<dynamic> getSingleUser({required int id})async{
    var r = await Api1().apiJSONGetWitToken("api/unknown/$id");
    return r;
  }
}