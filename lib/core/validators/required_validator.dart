import 'package:cf_companion/core/validators/validator.dart';

class RequiredValidator extends Validator<String> {
  final String message;
  const RequiredValidator({this.message = 'هذا الحقل مطلوب'});

  @override
  String? validate(String value) {
    if (value.trim().isEmpty) return message;
    return null;
  }
}