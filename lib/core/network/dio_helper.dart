import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:cf_companion/core/network/api_exception.dart';
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

  static Future<dynamic> getRequest({
    required String endPoint,
    required Map<String, dynamic> queryParameters,
  }) async {
    await _applyRateLimit();

    try {
      final response = await dio!.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return _unwrap(response.data);
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data is Map<String, dynamic> && data['status'] == 'FAILED') {
        throw ApiException.fromCfComment(data['comment'] ?? 'حصل خطأ');
      }
      throw ApiException.network(e.message);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException.unknown(e.toString());
    }
  }

  static dynamic _unwrap(dynamic data) {
    if (data is Map<String, dynamic>) {
      if (data['status'] == 'FAILED') {
        throw ApiException.fromCfComment(data['comment'] ?? 'حصل خطأ');
      }
      return data['result'];
    }
    throw ApiException.unknown('شكل الرد من السيرفر غير متوقع');
  }

  static Future<void> _applyRateLimit() async {
    final now = DateTime.now();
    final nextAvailableTime = _lastRequestTime.add(_rateLimitDuration);

    if (now.isBefore(nextAvailableTime)) {
      final waitDuration = nextAvailableTime.difference(now);
      _lastRequestTime = nextAvailableTime;
      await Future.delayed(waitDuration);
    } else {
      _lastRequestTime = now;
    }
  }
}
