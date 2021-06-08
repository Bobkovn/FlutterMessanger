import 'package:formz/formz.dart';

enum PasswordValidationError { empty, tooSmall }

const MIN_LENGTH = 8;

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    if (value?.isNotEmpty == true) {
      return (value?.length ?? 0) >= MIN_LENGTH ? null : PasswordValidationError.tooSmall;
    } else {
      return PasswordValidationError.empty;
    }
  }
}
