import 'package:cf_companion/core/exceptions/api_exception.dart';

class CfResponseParser {
  const CfResponseParser();

  dynamic unwrap(dynamic data) {
    if (data is Map<String, dynamic>) {
      if (data['status'] == 'FAILED') {
        throw ApiException.fromCfComment(data['comment'] ?? 'حصل خطأ');
      }
      return data['result'];
    }
    throw ApiException.unknown('شكل الرد من السيرفر غير متوقع');
  }

  ApiException? tryParseError(dynamic data) {
    if (data is Map<String, dynamic> && data['status'] == 'FAILED') {
      return ApiException.fromCfComment(data['comment'] ?? 'حصل خطأ');
    }
    return null;
  }
}
