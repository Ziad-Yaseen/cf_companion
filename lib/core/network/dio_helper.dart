import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static DateTime _lastRequestTime = DateTime.fromMillisecondsSinceEpoch(0);
  static const Duration _rateLimitDuration = Duration(seconds: 2);

  static void initDio() {
    dio ??= Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  static Future<Response<dynamic>> getRequest({
    required String endPoint,
    required Map<String, dynamic> queryParameters,
  }) async {
    final now = DateTime.now();
    final nextAvailableTime = _lastRequestTime.add(_rateLimitDuration);

    if (now.isBefore(nextAvailableTime)) {
      final waitDuration = nextAvailableTime.difference(now);
      _lastRequestTime = nextAvailableTime;
      await Future.delayed(waitDuration);
    } else {
      _lastRequestTime = now;
    }
    try {
      Response response = await dio!.get(
        endPoint,
        queryParameters: queryParameters,
      );

      return response;
    } on DioException catch (e) {
      throw Exception(e.message ?? 'Server connection error');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
