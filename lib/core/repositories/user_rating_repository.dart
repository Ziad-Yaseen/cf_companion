import 'package:cf_companion/core/services/user_rating_service.dart';
import 'package:cf_companion/data/models/rating_change_model.dart';

class UserRatingRepository {
  final UserRatingService userRatingService;
  UserRatingRepository(this.userRatingService);
  Future<List<RatingChangeModel>> fetchRatingHistory(String handle) async {
    final ratingChanges = await userRatingService.getUserRating(handle);
    ratingChanges.sort(
      (a, b) => a.ratingUpdateTimeSeconds.compareTo(b.ratingUpdateTimeSeconds),
    );
    return ratingChanges;
  }
}
