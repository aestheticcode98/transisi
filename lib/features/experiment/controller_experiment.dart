import 'dart:convert';
import 'dart:developer';
import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_traceroute/flutter_traceroute.dart';
import 'package:flutter_traceroute/flutter_traceroute_platform_interface.dart';
import 'package:get/get.dart';
import 'package:transisi/features/experiment/api_experiment.dart';

class ControllerExperiment extends GetxController{
  final ApiExperiment api;
  ControllerExperiment({required this.api});

  var edtSite = TextEditingController();

  @override
  void onClose() {
    edtSite.dispose();
   super.onClose();
  }

  pingTest()async{
    final ping = Ping(
        edtSite.text,
        count: 5,
        encoding: Utf8Codec(allowMalformed: true));
    ping.stream.listen((event) {
      log("result from ${edtSite.text} => $event");
    });
  }

  tracert()async{
    final tesTracert = TracerouteArgs(
        host: edtSite.text,
        ttl: 20
    );
    final stream = FlutterTraceroute().trace(tesTracert);
    stream.listen((event) {
      log("return Tracert from ${edtSite.text} => $event");
    });
  }
}