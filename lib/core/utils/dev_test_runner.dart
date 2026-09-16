import 'dart:developer';

import 'package:cf_companion/core/network/api_exception.dart';

class DevTestRunner {
  DevTestRunner._();

  static Future<void> run<T>(
    String label,
    Future<T> Function() call, {
    void Function(T result)? onSuccess,
  }) async {
    log('▶️ Testing: $label');
    try {
      final result = await call();
      if (onSuccess != null) {
        onSuccess(result);
      } else {
        log('✅ $label -> $result');
      }
    } on ApiException catch (e) {
      log('❌ $label -> API Error (${e.type.name}): ${e.message}');
    } catch (e) {
      log('❌ $label -> Unexpected error: $e');
    }
  }
}
