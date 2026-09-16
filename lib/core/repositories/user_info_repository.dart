import 'package:cf_companion/core/network/api_exception.dart';
import 'package:cf_companion/core/services/user_info_service.dart';
import 'package:cf_companion/data/models/user_info_model.dart';

class UserInfoRepository {
  final UserInfoService userService;
  UserInfoRepository(this.userService);

  Future<UserInfoModel> fetchUserInfo(String handle) async {
    final users = await userService.getUserInfo(handle);
    if (users.isEmpty) {
      throw const ApiException(
        'مش لاقي بيانات لهذا الـ Handle',
        ApiExceptionType.notFound,
      );
    }
    return users.first;
  }

  Future<List<UserInfoModel>> fetchMultipleUsers(List<String> handles) {
    return userService.getUserInfo(handles.join(';'));
  }
}
