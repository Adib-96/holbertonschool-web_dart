class Password {
  String? password;

  bool isValid() {
    if (password == null) return false;

    final pw = password!;
    final hasMinLength = pw.length >= 8;
    final hasMaxLength = pw.length <= 16;
    final lowerAndUpperAndNumber = pw.contains(RegExp(r'[a-z]')) &&
        pw.contains(RegExp('r[A-Z]')) &&
        pw.contains(RegExp('r[0-9]'));

    return hasMinLength && hasMaxLength && lowerAndUpperAndNumber;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
