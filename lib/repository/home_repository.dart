import 'package:age_calculator/models/common_response.dart';
import 'package:age_calculator/networking/api_base_helper.dart';




class HomePageRepository {
  final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();

  Future<CommonResponse> getHomePageInfo() async {
    dynamic response = await _apiBaseHelper.get("/dashboard/get-home-page-info");
    return CommonResponse.fromJson(response);
  }








}