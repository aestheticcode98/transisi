import 'package:get/get.dart';
import 'package:transisi/features/experiment/api_experiment.dart';
import 'package:transisi/features/experiment/controller_experiment.dart';

class BindingExperiment implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerExperiment>(() => ControllerExperiment(api: ApiExperiment()));
  }
}