class Password {
  String? _password;
  Password({String? password}) {
    _password = password;
  }

  bool isValid() {
    if (_password == null) return false;
    final pw = _password!;
    final hasMinLength = pw.length >= 8;
    final hasMaxLength = pw.length <= 16;
    final hasUppercase = pw.contains(RegExp(r'[A-Z]'));
    final hasLowercase = pw.contains(RegExp(r'[a-z]'));
    final hasNumber = pw.contains(RegExp(r'[0-9]'));

    return hasMinLength &&
        hasMaxLength &&
        hasUppercase &&
        hasLowercase &&
        hasNumber;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
