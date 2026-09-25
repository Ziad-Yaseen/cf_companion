import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:cf_companion/core/network/dio_helper.dart';
import 'package:cf_companion/data/models/user_info_model.dart';

class UserInfoService {
  final DioHelper _dioHelper = DioHelper();

  Future<List<UserInfoModel>> getUserInfo(String handles) async {
    final result = await _dioHelper.getRequest(
      endPoint: ApiEndpoints.userInfo,
      queryParameters: {'handles': handles},
    );

    return (result as List<dynamic>)
        .map((e) => UserInfoModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
