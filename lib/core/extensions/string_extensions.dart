import '../constants/app/app_constants.dart';

extension StringLocalization on String {
  String? get isValidEmail => contains(
        RegExp(AppConstants.EMAIL_REGIEX),
      )
          ? null
          : 'Email does not valid';
}
