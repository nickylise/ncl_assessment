import 'package:get/get.dart';
import 'package:ncl_assessment/network/api_services.dart';

import '../models/cruise_ship_response_model.dart';

/*Note: We can create different controllers if there are different screens for every different response model*/

class MainController extends GetxController{
  Rx<CruiseShipResponseModel> skyModel = CruiseShipResponseModel().obs;
  Rx<CruiseShipResponseModel> blissModel = CruiseShipResponseModel().obs;
  Rx<CruiseShipResponseModel> escapeModel = CruiseShipResponseModel().obs;
  RxBool loading=false.obs;
  late final ApiService apiClient;

  @override
  void onInit() {
    apiClient = ApiService.create();
    super.onInit();
  }

  getSkyData()async {
    loading.value = true;
    await apiClient.getAllSkyDataFromAPI().then((value) {
      skyModel.value = value;

    });
    loading.value = false;
  }
  getBlissData()async {
    loading.value = true;
    await apiClient.getAllBlissDataFromAPI().then((value) {
      blissModel.value = value;
    });
    loading.value = false;
  }
  getEscapeData()async {
    loading.value = true;
    await apiClient.getAllEscapeDataFromAPI().then((value) {
      escapeModel.value = value;
    });
    loading.value = false;
  }

  getModel(int tab){
    switch(tab){
      case 0:
        return skyModel;
      case 1:
        return blissModel;
      case 2:
        return escapeModel;
    }
  }
}