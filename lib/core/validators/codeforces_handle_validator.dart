import 'package:cf_companion/core/validators/validator.dart';

class CodeforcesHandleValidator extends Validator<String> {
  static final RegExp _pattern = RegExp(r'^[a-zA-Z][a-zA-Z0-9_.-]{2,23}$');

  final String message;
  const CodeforcesHandleValidator({this.message = 'شكل الـ Handle غير صحيح'});

  @override
  String? validate(String value) {
    if (!_pattern.hasMatch(value)) return message;
    return null;
  }
}
