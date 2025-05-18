class Password {
  String _password = '';

  // Constructor
  Password({required String password}) {
    _password = password;
  }

  // Getter
  String get password => _password;

  // Setter
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!_password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    if (!_password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
