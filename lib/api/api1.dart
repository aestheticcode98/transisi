import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'api2.dart';
import 'package:http_parser/http_parser.dart';

class Api1 {
  String baseUrl = 'https://reqres.in/';

  Future<dynamic> apiJSONGet(String url) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    http.Response r =
    await http.get(Uri.parse(baseUrl + url), headers: headers);
    log("status codenya ${r.statusCode}");
    log(r.body.toString());
    var data = json.decode(r.body);
    // log(data.toString());
    // logApi(url: url, res: r, method: "GET");
    return data;
  }

  Future<dynamic> apiJSONGetWitToken(String url) async {
    var token = await Api2().getToken();
    Map<String, String> headers = {
      'content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    http.Response r =
    await http.get(Uri.parse(baseUrl + url), headers: headers);
    log("status codenya ${r.statusCode}");

    var data = json.decode(r.body);
    // log(data.toString());
    // logApi(url: url, res: r, method: "GET");
    return data;
  }

  Future<dynamic> apiJSONPost(String url, Map<String, dynamic> params) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    var r = await http.post(Uri.parse(baseUrl + url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(params),
        encoding: Encoding.getByName("utf-8"));
    var data = jsonDecode(r.body);
    log("status codenya ${r.statusCode}");

    // log(data.toString());
    // logApi(url: url, res: r, method: "POST", payload: params);
    return data;
  }

  Future<dynamic> apiJSONPostWithToken(String url,
      Map<String, dynamic> params) async {
    var token = await Api2().getToken();

    Map<String, String> headers = {
      'content-Type': 'application/json',
      'accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    var r = await http.post(Uri.parse(baseUrl + url),
        headers: headers,
        body: jsonEncode(params),
        encoding: Encoding.getByName("utf-8"));
    log("r ${r.body}");
    var data = jsonDecode(r.body);
    log("status codenya ${r.statusCode}");

    // log(data.toString());
    // logApi(url: url, res: r, method: "POST", payload: params);
    return data;
  }
}