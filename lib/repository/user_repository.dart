import 'package:age_calculator/models/common_response.dart';
import 'package:age_calculator/networking/api_base_helper.dart';




class UserRepository {
  final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();


  Future<CommonResponse> getUserProfileInfo() async {
    dynamic response = await _apiBaseHelper.get("user/get-profile-info");
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> updateUserProfilePicture(dynamic body) async {
    dynamic response = await _apiBaseHelper.postWithAnyContentType("/user/update-user-profile-picture", body);
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> updateUserProfileInfo(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/user/update-user-profile-info", body);
    return CommonResponse.fromJson(response);
  }





}