import 'package:cf_companion/core/network/cf_response_parser.dart';
import 'package:cf_companion/core/network/dio_helper.dart';
import 'package:cf_companion/core/network/rate_limiter.dart';
import 'package:cf_companion/core/repositories/user_info_repository.dart';
import 'package:cf_companion/core/repositories/user_rating_repository.dart';
import 'package:cf_companion/core/services/user_info_service.dart';
import 'package:cf_companion/core/services/user_rating_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<RateLimiter>(() => RateLimiter());
  getIt.registerLazySingleton<CfResponseParser>(() => const CfResponseParser());
  getIt.registerLazySingleton<DioHelper>(
    () => DioHelper(
      rateLimiter: getIt<RateLimiter>(),
      responseParser: getIt<CfResponseParser>(),
    ),
  );

  getIt.registerFactory<UserInfoService>(
    () => UserInfoService(getIt<DioHelper>()),
  );
  getIt.registerFactory<UserRatingService>(
    () => UserRatingService(getIt<DioHelper>()),
  );

  getIt.registerFactory<UserInfoRepository>(
    () => UserInfoRepository(getIt<UserInfoService>()),
  );

  getIt.registerFactory<UserRatingRepository>(
    () => UserRatingRepository(getIt<UserRatingService>()),
  );
}
