class ApiException implements Exception {
  final String message;
  final ApiExceptionType type;

  const ApiException(this.message, this.type);

  factory ApiException.fromCfComment(String comment) {
    if (comment.toLowerCase().contains('call limit')) {
      return const ApiException(
        'في ضغط على الـ API دلوقتي، هنحاول تاني تلقائيًا',
        ApiExceptionType.rateLimited,
      );
    }
    if (comment.toLowerCase().contains('not found')) {
      return const ApiException(
        'مش لاقي البيانات دي، تأكد من الـ Handle',
        ApiExceptionType.notFound,
      );
    }
    return ApiException(comment, ApiExceptionType.logical);
  }

  factory ApiException.network(String? message) {
    return ApiException(
      message ?? 'حصلت مشكلة في الاتصال، حاول تاني',
      ApiExceptionType.network,
    );
  }

  factory ApiException.unknown(String message) {
    return ApiException(message, ApiExceptionType.unknown);
  }

  @override
  String toString() => message;
}

enum ApiExceptionType { network, logical, notFound, rateLimited, unknown }
