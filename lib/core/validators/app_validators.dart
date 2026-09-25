import 'package:cf_companion/core/validators/codeforces_handle_validator.dart';
import 'package:cf_companion/core/validators/multi_validator.dart';
import 'package:cf_companion/core/validators/required_validator.dart';
import 'package:cf_companion/core/validators/validator.dart';

class AppValidators {
  AppValidators._();

  static const Validator<String> handle = MultiValidator([
    RequiredValidator(message: 'من فضلك أدخل الـ Handle'),
    CodeforcesHandleValidator(),
  ]);
}
