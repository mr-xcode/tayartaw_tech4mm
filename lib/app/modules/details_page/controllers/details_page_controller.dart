import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPageController extends GetxController {
  //TODO: Implement DetailsPageController

  final count = 0.obs;
  var isPlaying = false.obs;
  Connectivity connectivity = Connectivity();

  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  void toggleAudio() {
    isPlaying.value = !isPlaying.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
