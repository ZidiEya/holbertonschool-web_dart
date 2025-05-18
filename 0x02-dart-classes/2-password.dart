class Password {
  String password = '';

  bool isValid() {
    // Check password length
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check for at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return false;
    }

    // Check for at least one lowercase letter
    if (!password.contains(RegExp(r'[a-z]'))) {
      return false;
    }

    // Check for at least one digit
    if (!password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
