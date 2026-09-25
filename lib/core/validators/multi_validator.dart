import 'package:cf_companion/core/validators/validator.dart';

class MultiValidator extends Validator<String> {
  final List<Validator<String>> validators;
  const MultiValidator(this.validators);

  @override
  String? validate(String value) {
    for (final validator in validators) {
      final error = validator.validate(value);
      if (error != null) return error;
    }
    return null;
  }
}
