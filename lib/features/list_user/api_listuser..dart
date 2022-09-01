import 'package:transisi/api/api1.dart';

class ApiListuser{
  Future<dynamic> getAll()async{
    var r = await Api1().apiJSONGetWitToken("api/unknown");
    return r;
  }
}