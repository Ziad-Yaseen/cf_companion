import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:cf_companion/core/network/dio_helper.dart';
import 'package:cf_companion/data/models/submissions_model.dart';

class SubmissionsService {
  final DioHelper _dioHelper = DioHelper();

  Future<List<SubmissionModel>> getUserStatus(String handle) async {
    final result = _dioHelper.getRequest(
      endPoint: ApiEndpoints.userStatus,
      queryParameters: {'handle': handle},
    );

    return result as Future<List<SubmissionModel>>;
  }
}
