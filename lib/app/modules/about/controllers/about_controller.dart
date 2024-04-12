import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class AboutController extends GetxController {
  //TODO: Implement AboutController

  final count = 0.obs;
  Connectivity connectivity = Connectivity();

  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
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

  void increment() => count.value++;
}
