class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    // Check password length
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check for at least one uppercase letter
    if (!_password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    // Check for at least one lowercase letter
    if (!_password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    // Check for at least one digit
    if (!_password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return 'Your Password is $_password';
  }
}
