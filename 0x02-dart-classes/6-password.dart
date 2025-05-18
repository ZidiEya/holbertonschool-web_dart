class Password {
  String? _password;

  Password({String? password}) {
    _password = password;
  }

  bool isValid() {
    final password = _password ?? '';
    if (password.length < 8 || password.length > 16) return false;
    if (!password.contains(RegExp(r'[A-Z]'))) return false;
    if (!password.contains(RegExp(r'[a-z]'))) return false;
    if (!password.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  set password(String? value) {
    _password = value;
  }

  String? get password => _password;

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
