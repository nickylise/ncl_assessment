
import 'package:ncl_assessment/models/cruise_ship_response_model.dart';
import 'package:ncl_assessment/utils/api_endpoints.dart';


import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_services.g.dart';

@RestApi(baseUrl:BASE_URL)
abstract class ApiService{
  factory ApiService(Dio dio,{String? baseUrl}) = _ApiService;
  static ApiService create(){
    final dio = Dio();
    return ApiService(dio);
  }

  @GET(EP_SKY)
  Future<CruiseShipResponseModel>getAllSkyDataFromAPI();

  @GET(EP_BLISS)
  Future<CruiseShipResponseModel>getAllBlissDataFromAPI();

  @GET(EP_ESCAPE)
  Future<CruiseShipResponseModel>getAllEscapeDataFromAPI();

}