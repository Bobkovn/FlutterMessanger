import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

const EMAIL_PATTERN = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    if (value?.isNotEmpty == true) {
      return RegExp(EMAIL_PATTERN).hasMatch(value ?? '') ? null : EmailValidationError.invalid;
    } else {
      return EmailValidationError.empty;
    }
  }
}
