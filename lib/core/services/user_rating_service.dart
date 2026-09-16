import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:cf_companion/core/network/dio_helper.dart';
import 'package:cf_companion/data/models/rating_change_model.dart';

class UserRatingService {
  UserRatingService(this._dioHelper);

  final DioHelper _dioHelper;

  Future<List<RatingChangeModel>> getUserRating(String handle) async {
    final result = await _dioHelper.getRequest(
      endPoint: ApiEndpoints.userRating,
      queryParameters: {'handle': handle},
    );

    return (result as List<dynamic>)
        .map((e) => RatingChangeModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
