import 'package:age_calculator/models/common_response.dart';
import 'package:age_calculator/networking/api_base_helper.dart';



class AuthRepository {
  final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();

  Future<CommonResponse> login(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/auth/login", body);
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> loginWithSocial(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/auth/login-with-social", body);
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> checkAccountExist(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/auth/check-account-exist", body);
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> registration(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/auth/registration", body);
    return CommonResponse.fromJson(response);
  }

  Future<CommonResponse> updatePassword(dynamic body) async {
    dynamic response = await _apiBaseHelper.post("/auth/update-password", body);
    return CommonResponse.fromJson(response);
  }
}