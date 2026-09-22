import 'package:cf_companion/core/network/api_endpoints.dart';
import 'package:cf_companion/core/exceptions/api_exception.dart';
import 'package:cf_companion/core/network/cf_response_parser.dart';
import 'package:cf_companion/core/network/rate_limiter.dart';
import 'package:dio/dio.dart';

class DioHelper {
  DioHelper({RateLimiter? rateLimiter, CfResponseParser? responseParser})
    : _rateLimiter = rateLimiter ?? RateLimiter(),
      _responseParser = responseParser ?? const CfResponseParser();

  final RateLimiter _rateLimiter;
  final CfResponseParser _responseParser;

  Dio? _dio;

  Dio get _client {
    _dio ??= Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    return _dio!;
  }

  Future<dynamic> getRequest({
    required String endPoint,
    required Map<String, dynamic> queryParameters,
  }) async {
    await _rateLimiter.wait();

    try {
      final response = await _client.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return _responseParser.unwrap(response.data);
    } on DioException catch (e) {
      final parsedError = _responseParser.tryParseError(e.response?.data);
      if (parsedError != null) throw parsedError;
      throw ApiException.network(e.message);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException.unknown(e.toString());
    }
  }
}
